package com.example.jfsd.controller;

import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;  // Import Blogger model
import com.example.jfsd.model.User;
import com.example.jfsd.repository.BlogPostRepository;
import com.example.jfsd.repository.BloggerRepository;
import com.example.jfsd.service.AdminService;
import com.example.jfsd.service.AdminServiceImpl;
import com.example.jfsd.service.BlogPostService;
import com.example.jfsd.service.BlogPostServiceImpl;
import com.example.jfsd.service.BloggerService;
import com.example.jfsd.service.UniquenessService;
import com.example.jfsd.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;
import com.example.jfsd.model.Admin;

import java.io.IOException;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BloggerController {

    @Autowired
    private BloggerService bloggerService;
    @Autowired
    private BloggerRepository bloggerRepository;
    @Autowired
    private BlogPostRepository blogPostRepository;

    @Autowired
    private BlogPostService blogPostService;
    @Autowired
    private AdminService adminService;

    // Admin signup form
    @GetMapping("/adminsignup")
    public String showAdminSignup() {
        return "adminsignup";
    }
    @GetMapping("/")
    public String showSigninPage() {
        return "signin"; // Points to the signup.jsp page
    }

    // Create admin account
    @PostMapping("/createadminsignup")
    public String createAdminAccount(@RequestParam String username, @RequestParam String password, Model model) {
        Admin admin = new Admin();
        admin.setUsername(username);
        admin.setPassword(password);
        adminService.saveAdmin(admin);
        model.addAttribute("message", "Account Created Successfully! Please Log In.");
        return "redirect:/adminlogin";
    }

    // Admin login form
    @GetMapping("/adminlogin")
    public String showAdminLogin(@RequestParam(required = false) String error, Model model) {
        if (error != null) {
            model.addAttribute("error", error);
        }
        return "adminlogin";
    }

    // Admin login authentication
    @PostMapping("/adminlogin")
    public String adminLogin(@RequestParam String username, @RequestParam String password, Model model) {
        Admin admin = adminService.findadminbyusername(username);
        if (admin != null && admin.getPassword().equals(password)) {
            model.addAttribute("username", username);
            model.addAttribute("password", password);
            return "redirect:/admin/home";
        } else {
            return "redirect:/adminlogin?error=Invalid username or password";
        }
    }

    // Admin home page showing pending, approved, and rejected posts
    @Controller
    public class AdminController {

        @Autowired
        private AdminServiceImpl adminService;

        @Autowired
        private BlogPostServiceImpl blogPostService;

        @GetMapping("/admin/home")
        public String adminHomePage(Model model) {
            List<BlogPost> pendingPosts = adminService.getPendingPosts();
            List<BlogPost> approvedPosts = adminService.getPostsByStatus("APPROVED");
            List<BlogPost> rejectedPosts = adminService.getPostsByStatus("REJECTED");

            model.addAttribute("pendingPosts", pendingPosts);
            model.addAttribute("approvedPosts", approvedPosts);
            model.addAttribute("rejectedPosts", rejectedPosts);

            return "admin/home";
        }
        @GetMapping("/user/blogs")
        public String blogpage(HttpServletRequest request) {
            List<BlogPost> approvedPosts = adminService.getPostsByStatus("APPROVED");
            request.setAttribute("approvedPosts", approvedPosts); // Setting request attribute
            return "blogs"; // Ensure "blogs" maps to your JSP
        }


        // Approve post
        @PostMapping("/admin/approve/{postId}")
        public String approvePost(@PathVariable Long postId) {
            adminService.approvePost(postId);
            return "redirect:/admin/home";
        }

        // Reject post
        @PostMapping("/admin/reject/{postId}")
        public String rejectPost(@PathVariable Long postId) {
            adminService.rejectPost(postId);
            return "redirect:/admin/home";
        }
    }

    // Blogger signup form
    @GetMapping("/signup")
    public String showSignupPage() {
        return "signup"; // Points to signup.jsp
    }

    // Create blogger account
    @PostMapping("/createAccount")
    public String createAccount(@RequestParam String username, @RequestParam String password, Model model) {
        Blogger blogger = new Blogger();
        blogger.setUsername(username);
        blogger.setPassword(password);

        bloggerService.saveBlogger(blogger);
        model.addAttribute("message", "Account created successfully! Please log in.");
        return "redirect:/login";
    }

    // Blogger login form
    @GetMapping("/login")
    public String showLoginPage(@RequestParam(required = false) String error, Model model) {
        if (error != null) {
            model.addAttribute("error", error);
        }
        return "login"; // Points to login.jsp
    }

    // Blogger login authentication
    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        Blogger blogger = bloggerService.findBloggerByUsername(username);

        if (blogger != null && blogger.getPassword().equals(password)) {
            model.addAttribute("username", username);
            model.addAttribute("bloggerId", blogger.getId());  // Optionally store bloggerId for future use
            return "redirect:/bloggerHome?username=" + username;  // Use username instead of bloggerId
        } else {
            return "redirect:/login?error=Invalid username or password";
        }
    }

    @GetMapping("/bloggerHome")
    public String showBloggerHome(@RequestParam String username, Model model) {
        Blogger blogger = bloggerService.findBloggerByUsername(username);
          
        if (blogger == null) {
            model.addAttribute("error", "Blogger not found.");
            return "redirect:/login"; // Redirect to login if the blogger is not found
        }

        // Fetch all posts created by this blogger
            List<BlogPost> pendingPosts = blogPostService.getPostsByBloggerAndStatus(blogger,"APPROVED");
            List<BlogPost> approvedPosts = blogPostService.getPostsByBloggerAndStatus(blogger,"APPROVED");
            List<BlogPost> rejectedPosts = blogPostService.getPostsByBloggerAndStatus(blogger,"REJECTED");

            model.addAttribute("pendingPosts", pendingPosts);
            model.addAttribute("approvedPosts", approvedPosts);
            model.addAttribute("rejectedPosts", rejectedPosts);
            model.addAttribute("username", username); // Pass username for display

        return "BloggerHome"; // Forward to bloggerhome.jsp
    }
    
    // Show the page to add a new post
    @GetMapping("/addPost")
    public String showAddPostPage(@RequestParam String username, Model model) {
        System.out.println("Received username in /addPost: " + username);
        model.addAttribute("username", username);  // Pass the username to the view
        return "addpost"; // Points to the addpost.jsp page
    }

    // Save the new blog post
    @PostMapping("/savePost")
    public String savePost(@RequestParam String username, @RequestParam String title,
                           @RequestParam String description, @RequestParam String hashtags,
                           @RequestParam MultipartFile image, Model model) {
        System.out.println("savePost invoked");
        System.out.println("Username: " + username);
        System.out.println("Title: " + title);
        System.out.println("Description: " + description);
        System.out.println("Hashtags: " + hashtags);
        System.out.println("Image: " + (image != null ? image.getOriginalFilename() : "No image uploaded"));

        try {
            Blogger blogger = bloggerService.findBloggerByUsername(username);
            if (blogger == null) {
                System.out.println("Blogger not found for username: " + username);
                model.addAttribute("error", "Blogger not found!");
                return "redirect:/addPost";  
            }

            BlogPost blogPost = new BlogPost();
            blogPost.setTitle(title);
            blogPost.setDescription(description);
            blogPost.setBlogger(blogger);

            blogPostService.savePost(blogPost, image, hashtags);

            System.out.println("Post created successfully!");
            return "redirect:/bloggerHome?username=" + username;
        } catch (IOException e) {
            e.printStackTrace();
            model.addAttribute("error", "Error saving the post.");
            return "redirect:/addPost";
        }
    }
    
    // 12:27 dec7@
    @Controller
    
    @RequestMapping("/user")
    public class UserController {

    	@Autowired
        private UserService userService;

        // Signup form display
        @GetMapping("/signup")
        public String showSignupForm(Model model) {
            model.addAttribute("user", new User());
            return "usersignup";
        }
        @GetMapping("/homepage")
        public String showUserHomePage(Model model) {
            // Add necessary attributes to display on the homepage (like username if needed)
            return "UserHome";  // JSP view name (the page we designed above)
        }
        // Signup submission
        @PostMapping("/signup")
        public String handleSignup(User user, BindingResult result, Model model) {
            if (result.hasErrors()) {
                return "usersignup";
            }

            try {
                // Add user to the database
                userService.registerUser(user); // Call service method to save user

                return "redirect:/user/login";  // Redirect to login after successful signup
            } catch (Exception e) {
                model.addAttribute("error", "Error during signup. Please try again.");
                return "usersignup";
            }
        }
@Autowired
private UserService userservice;
        

        // Login form display
        @GetMapping("/login")
        public String showAdminLogin(@RequestParam(required = false) String error, Model model) {
            if (error != null) {
                model.addAttribute("error", error);
            }
            return "userlogin";
}
        

        // Admin login authentication
        @PostMapping("/login")
        public String adminLogin(@RequestParam String username, @RequestParam String password, Model model) {
            User admin = userservice.finduserbyusername(username);
            if (admin != null && admin.getPassword().equals(password)) {
                model.addAttribute("username", username);
                model.addAttribute("password", password);
                return "redirect:/user/homepage";
            } else {
                return "redirect:/userlogin?error=Invalid username or password";
            }
            
        }
        
       
    }
    
    @GetMapping("/idk")
    public String getMethodName(@RequestParam(required = false) String username, Model model) {
        return "UserHome";
    }
    
    @Controller
    public class UniquenessController {

        @Autowired
        private UniquenessService uniquenessService;

        @GetMapping("/uniqueness-of-india")
        public String uniquenessOfIndia(Model model) {
            model.addAttribute("sections", uniquenessService.getIndiaDetails());
            return "uniquenesss";
        }
      
        @Controller
        public class HomeController {

            @GetMapping("/user/gallery")
            public String showGalleryPage() {
                return "gallery";  // This should match the gallery.jsp page
            }
        }
    
  
    }
    
    @GetMapping("/state/maharashtra")
    public String showMaharashtraPage() {
        // This maps the /maharashtra URL to maharashtra.jsp
        return "maharashtra";
    }
    @GetMapping("/maharashtra/food")
    public String showfoodpage() {
        return "food";
    }
    @GetMapping("/maharashtra/monuments")
    public String showmonumentspage() {
        return "monumentsinmaharashtra";
    }
    @GetMapping("/food/vada-pav")
    public String showfooddetails() {
        return "food-details";
    }
    
    @GetMapping("/monuments/gateway-of-india")
    public String getMethodName() {
        return  "monument-details";
    }
    
    @Autowired
    private BlogPostService blogpostService;

   
}
