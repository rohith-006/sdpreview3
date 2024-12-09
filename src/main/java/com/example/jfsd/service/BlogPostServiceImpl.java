package com.example.jfsd.service;

import com.example.jfsd.model.BlogPost;
import com.example.jfsd.model.Blogger;
import com.example.jfsd.model.Hashtag;
import com.example.jfsd.repository.BlogPostRepository;
import com.example.jfsd.repository.BloggerRepository;
import com.example.jfsd.repository.HashtagRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
@Service
public class BlogPostServiceImpl implements BlogPostService {

    @Autowired
    private BlogPostRepository blogPostRepository;

    @Autowired
    private BloggerRepository bloggerRepository;

    @Autowired
    private HashtagRepository hashtagRepository;

    @Override
    public BlogPost savePost(BlogPost blogPost, MultipartFile image, String hashtags) throws IOException {
        String imagePath = saveImage(image);
        blogPost.setImagePath(imagePath);

        List<Hashtag> hashtagList = processHashtags(hashtags);
        blogPost.setHashtags(hashtagList);

        return blogPostRepository.save(blogPost);
    }

    public String saveImage(MultipartFile image) throws IOException {
        Path uploadDirectory = Paths.get("src/main/resources/static/images/");
        if (!Files.exists(uploadDirectory)) {
            Files.createDirectories(uploadDirectory);
        }

        String fileName = image.getOriginalFilename();
        Path filePath = uploadDirectory.resolve(fileName);
        image.transferTo(filePath); 

        return filePath.toString();
    }

    private List<Hashtag> processHashtags(String hashtags) {
        List<Hashtag> hashtagList = new ArrayList<>();
        if (hashtags != null && !hashtags.trim().isEmpty()) {
            String[] hashtagsArray = hashtags.split(",");
            for (String hashtagText : hashtagsArray) {
                Hashtag hashtag = hashtagRepository.findByText(hashtagText.trim());
                if (hashtag == null) {
                    hashtag = new Hashtag(hashtagText.trim());
                    hashtagRepository.save(hashtag);
                }
                hashtagList.add(hashtag);
            }
        }
        return hashtagList;
    }

    @Override
    public List<BlogPost> getPostsByBlogger(Long bloggerId) {
        Blogger blogger = bloggerRepository.findById(bloggerId).orElse(null);
        if (blogger != null) {
            return blogPostRepository.findByBloggerId(bloggerId);
        }
        return new ArrayList<>();
    }

    // Admin method to approve or reject a post
    public void updatePostStatus(Long postId, String status) {
        BlogPost post = blogPostRepository.findById(postId).orElse(null);
        if (post != null) {
            post.setStatus(status);
            blogPostRepository.save(post);
        }
    }
    public List<BlogPost> getPostsByBloggerAndStatus(Blogger blogger, String status) {
        return blogPostRepository.findByBloggerAndStatus(blogger, status);
    }
    public List<BlogPost> getApprovedBlogs() {
        return blogPostRepository.findByStatus("approved");
    }
}
