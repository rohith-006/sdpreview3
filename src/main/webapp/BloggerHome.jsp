<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<%@ page import="com.example.jfsd.model.Hashtag" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blogger Profile</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #f1f1f1;
            color: #333;
        }

        h1, h2, h3 {
            color: #2c3e50;
            text-align: center;
        }

        h3 {
            margin-bottom: 15px;
            font-size: 1.5em;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            display: inline-block;
            margin: 10px 0;
            padding: 10px 15px;
            border-radius: 30px;
            background: #FF6347;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        a:hover {
            background: #FF4500;
            transform: scale(1.1);
        }

        .container {
            width: 90%;
            margin: 30px auto;
            padding: 25px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        /* Enhanced Blogger Profile Header with Saffron Gradient */
        .blogger-profile-header {
            background: linear-gradient(135deg, #FFAA00, #FF7700, #FF4500); /* Saffron and orange mixture */
            color: white;
            padding: 40px 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
            position: relative;
            overflow: hidden;
        }

        .blogger-profile-header h1 {
            font-size: 3em;
            margin-bottom: 20px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
        }

        .blogger-profile-header p {
            font-size: 1.2em;
            font-weight: 300;
            margin-bottom: 20px;
        }

        .blogger-profile-header .btn {
            text-decoration: none;
            color: white;
            background-color: #28a745;
            padding: 15px 30px;
            border-radius: 30px;
            font-weight: bold;
            letter-spacing: 1px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .blogger-profile-header .btn:hover {
            background-color: #218838;
            transform: scale(1.1);
        }

        .post {
            margin-bottom: 20px;
            border-radius: 10px;
            padding: 20px;
            background: #fff;
            border: 1px solid #eee;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .post:hover {
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            transform: translateY(-5px);
        }

        .post img {
            margin-top: 15px;
            max-width: 100%;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .post img:hover {
            transform: scale(1.1);
        }

        .section-title {
            text-align: center;
            font-size: 2em;
            color: #FF6347;
            margin-bottom: 15px;
            position: relative;
        }

        .section-title::after {
            content: "";
            width: 60px;
            height: 3px;
            background: #FF6347;
            display: block;
            margin: 10px auto;
            border-radius: 5px;
        }

        .no-posts {
            text-align: center;
            margin: 20px 0;
            padding: 15px;
            font-size: 1.2em;
            color: #888;
            background: #f5f5f5;
            border: 1px dashed #ccc;
            border-radius: 8px;
        }

       .footer {
    background-color: #555;  /* Medium grey background */
    color: white;
    text-align: center;
    padding: 20px 15px;
    font-size: 1em;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border-top: 3px solid #777;  /* Lighter grey border */
}

.footer p {
    margin: 0;
    line-height: 1.5;
}

.footer a {
    color: #ccc;  /* Light grey link color */
    text-decoration: none;
    font-weight: bold;
    margin: 0 10px;
}

.footer a:hover {
    color: #aaa;  /* Slightly darker grey on hover */
    text-decoration: none;
}






    </style>
</head>
<body>
    <div class="container">
        <!-- Enhanced Blogger Profile Header with Saffron Gradient -->
        <div class="blogger-profile-header">
            <h1>Welcome Back, <%= request.getAttribute("username") %>!</h1>
            <p>Your blogging journey continues. Let's create, share, and inspire!</p>
            <a href="addPost?username=<%= request.getAttribute("username") %>" class="btn">Create New Post</a>
        </div>

        <!-- Pending Posts Section -->
        <section class="pending">
            <h3 class="section-title">All Posts</h3>
            <%
                @SuppressWarnings("unchecked")
                List<BlogPost> pendingPosts = (List<BlogPost>) request.getAttribute("pendingPosts");
                if (pendingPosts != null && !pendingPosts.isEmpty()) {
                    for (BlogPost post : pendingPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <% if (post.getImagePath() != null) { %>
                                <strong>Image:</strong>
                                <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/>
                            <% } %>
                        </div>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No pending posts.</p>
            <%
                }
            %>
        </section>

        <!-- Approved Posts Section -->
        <section class="approved">
            <h3 class="section-title">Approved Posts</h3>
            <%
                @SuppressWarnings("unchecked")
                List<BlogPost> approvedPosts = (List<BlogPost>) request.getAttribute("approvedPosts");
                if (approvedPosts != null && !approvedPosts.isEmpty()) {
                    for (BlogPost post : approvedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <% if (post.getImagePath() != null) { %>
                                <strong>Image:</strong>
                                <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/>
                            <% } %>
                        </div>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No approved posts.</p>
            <%
                }
            %>
        </section>

        <!-- Rejected Posts Section -->
        <section class="rejected">
            <h3 class="section-title">Rejected Posts</h3>
            <%
                @SuppressWarnings("unchecked")
                List<BlogPost> rejectedPosts = (List<BlogPost>) request.getAttribute("rejectedPosts");
                if (rejectedPosts != null && !rejectedPosts.isEmpty()) {
                    for (BlogPost post : rejectedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <% if (post.getImagePath() != null) { %>
                                <strong>Image:</strong>
                                <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/>
                            <% } %>
                        </div>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No rejected posts.</p>
            <%
                }
            %>
        </section>
    </div>

    <div class="footer">
    <p>&copy; 2024 Your Blog Platform. All rights reserved. | 
        <a href="#">Privacy Policy</a>
    </p>
</div>





</body>
</html>