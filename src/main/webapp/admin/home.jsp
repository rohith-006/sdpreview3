<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<%@ page import="com.example.jfsd.model.User" %> <!-- Assuming the User model exists -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc; /* Light Blue */
        }

        /* Header Styles */
        .header {
            background-color: #FF9933; /* Saffron */
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 26px;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-bottom: 3px solid #FF7F00; /* Darker Saffron */
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #343a40; /* Dark Grey */
            color: white;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
            box-shadow: 4px 0 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            box-sizing: border-box;
            overflow-y: auto; /* Allow scrolling when content overflows */
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            margin: 20px 0;
            padding: 15px;
            border-radius: 5px;
            background-color: #FF6347; /* Vibrant Orange */
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .sidebar a:hover {
            background-color: #FF4500; /* Dark Orange */
            transform: scale(1.05);
        }

        .sidebar .sub-menu a {
            margin-left: 30px;
            background-color: #4CAF50; /* Green */
        }

        .sidebar .sub-menu a:hover {
            background-color: #45a049; /* Dark Green */
        }

        .sidebar .sub-menu {
            display: none;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px;
            padding: 30px;
            background-color: #ffffff;
            min-height: 100vh;
            transition: margin-left 0.3s ease;
        }

        h1 {
            color: #2E3B4E;
            text-align: center;
            font-size: 32px;
            margin-bottom: 30px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #FF6347;
            font-size: 26px;
            border-bottom: 2px solid #FF6347;
            padding-bottom: 5px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        th, td {
            padding: 18px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background-color: #343a40;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #fafafa;
        }

        tr:hover td {
            background-color: #FFECDB;
        }

        .action-buttons form {
            display: inline;
        }

        .action-buttons button {
            width: 120px;
            padding: 12px;
            cursor: pointer;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease;
            box-sizing: border-box;
            font-weight: bold;
        }

        .action-buttons button.approve {
            background-color: #4CAF50; /* Green */
            color: white;
        }

        .action-buttons button.reject {
            background-color: #FF6347; /* Vibrant Orange */
            color: white;
        }

        .action-buttons button:hover {
            transform: scale(1.05);
        }

        .action-buttons button.approve:hover {
            background-color: #45a049; /* Darker Green */
        }

        .action-buttons button.reject:hover {
            background-color: #FF4500; /* Dark Orange */
        }

        .no-posts {
            text-align: center;
            color: #999;
            font-size: 18px;
        }

        /* Footer Styles */
        .footer {
            background-color: #4CAF50; /* Green */
            color: white;
            text-align: center;
            padding: 2px 20px;
            font-size: 14px;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px; /* Adjust for smaller screens */
            }

            .main-content {
                margin-left: 220px;
            }

            table, th, td {
                font-size: 14px;
            }

            .action-buttons button {
                padding: 10px 18px;
                font-size: 14px;
            }
        }

        /* Smooth transitions */
        .sidebar, .main-content {
            transition: all 0.3s ease;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        Admin Dashboard
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="javascript:void(0)" onclick="toggleSubMenu()">Manage Posts</a>
        <div class="sub-menu" id="managePostsSubMenu">
            <a href="javascript:void(0)" onclick="showPosts('pending')">Pending Posts</a>
            <a href="javascript:void(0)" onclick="showPosts('approved')">Approved Posts</a>
            <a href="javascript:void(0)" onclick="showPosts('rejected')">Rejected Posts</a>
        </div>
        <a href="javascript:void(0)" onclick="showUsers()">View Users</a> <!-- Added View Users link -->
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Welcome, Admin!</h1>

        <!-- Dynamic Content Area -->
        <div id="postContent">
            <!-- Pending Posts Section -->
            <div id="pendingPosts" style="display:block;">
                <h2>Pending Posts</h2>
                <%
                @SuppressWarnings("unchecked")
                List<BlogPost> pendingPosts = (List<BlogPost>) request.getAttribute("pendingPosts");
                if (pendingPosts != null && !pendingPosts.isEmpty()) {
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        for (BlogPost post : pendingPosts) {
                        %>
                            <tr>
                                <td><%= post.getTitle() %></td>
                                <td><%= post.getDescription() %></td>
                                <td class="action-buttons">
                                    <!-- Approve Form -->
                                    <form action="/admin/approve/<%= post.getId() %>" method="post">
                                        <button type="submit" class="approve">Approve</button>
                                    </form>
                                    <!-- Reject Form -->
                                    <form action="/admin/reject/<%= post.getId() %>" method="post">
                                        <button type="submit" class="reject">Reject</button>
                                    </form>
                                </td>
                            </tr>
                        <%
                        }
                        %>
                        </tbody>
                    </table>
                <%
                } else {
                %>
                    <p class="no-posts">No pending posts.</p>
                <%
                }
                %>
            </div>

            <!-- Approved Posts Section -->
            <div id="approvedPosts" style="display:none;">
                <h2>Approved Posts</h2>
                <%
                @SuppressWarnings("unchecked")
                List<BlogPost> approvedPosts = (List<BlogPost>) request.getAttribute("approvedPosts");
                if (approvedPosts != null && !approvedPosts.isEmpty()) {
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        for (BlogPost post : approvedPosts) {
                        %>
                            <tr>
                                <td><%= post.getTitle() %></td>
                                <td><%= post.getDescription() %></td>
                            </tr>
                        <%
                        }
                        %>
                        </tbody>
                    </table>
                <%
                } else {
                %>
                    <p class="no-posts">No approved posts.</p>
                <%
                }
                %>
            </div>

            <!-- Rejected Posts Section -->
            <div id="rejectedPosts" style="display:none;">
                <h2>Rejected Posts</h2>
                <%
                @SuppressWarnings("unchecked")
                List<BlogPost> rejectedPosts = (List<BlogPost>) request.getAttribute("rejectedPosts");
                if (rejectedPosts != null && !rejectedPosts.isEmpty()) {
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        for (BlogPost post : rejectedPosts) {
                        %>
                            <tr>
                                <td><%= post.getTitle() %></td>
                                <td><%= post.getDescription() %></td>
                            </tr>
                        <%
                        }
                        %>
                        </tbody>
                    </table>
                <%
                } else {
                %>
                    <p class="no-posts">No rejected posts.</p>
                <%
                }
                %>
            </div>

            <!-- Users Section -->
            <div id="usersSection" style="display:none;">
                <h2>View Users</h2>
                <%
                @SuppressWarnings("unchecked")
                List<User> users = (List<User>) request.getAttribute("users");
                if (users != null && !users.isEmpty()) {
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>Username</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        for (User user : users) {
                        %>
                            <tr>
                                <td><%= user.getId() %></td>
                                <td><%= user.getUsername() %></td>
                                <td><%= user.getEmail() %></td>
                            </tr>
                        <%
                        }
                        %>
                        </tbody>
                    </table>
                <%
                } else {
                %>
                    <p class="no-posts">No users found.</p>
                <%
                }
                %>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Admin Dashboard | All Rights Reserved</p>
    </div>

    <script>
        // Function to toggle the sub-menu visibility
        function toggleSubMenu() {
            const subMenu = document.getElementById('managePostsSubMenu');
            subMenu.style.display = subMenu.style.display === 'none' ? 'block' : 'none';
        }

        // Function to show specific post type
        function showPosts(type) {
            // Hide all sections
            document.getElementById("pendingPosts").style.display = "none";
            document.getElementById("approvedPosts").style.display = "none";
            document.getElementById("rejectedPosts").style.display = "none";
            document.getElementById("usersSection").style.display = "none"; // Hide users section

            // Show the selected section
            if (type === 'pending') {
                document.getElementById("pendingPosts").style.display = "block";
            } else if (type === 'approved') {
                document.getElementById("approvedPosts").style.display = "block";
            } else if (type === 'rejected') {
                document.getElementById("rejectedPosts").style.display = "block";
            }
        }

        // Function to show the users section
        function showUsers() {
            // Hide other sections
            document.getElementById("pendingPosts").style.display = "none";
            document.getElementById("approvedPosts").style.display = "none";
            document.getElementById("rejectedPosts").style.display = "none";

            // Show the users section
            document.getElementById("usersSection").style.display = "block";
        }
    </script>

</body>
</html>
home.jsp