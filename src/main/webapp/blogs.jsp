<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Approved Posts</title>
</head>
<body>
    <div id="approvedPosts">
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
            <p>No approved posts available.</p>
        <%
            }
        %>
    </div>
</body>
</html>
