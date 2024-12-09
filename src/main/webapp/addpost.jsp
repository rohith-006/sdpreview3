<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Post</title>
    <style>
        /* Global styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff7e6; /* Soft saffron background */
            color: #3c3c3c; /* Dark text for readability */
        }

        /* Header bar with saffron theme */
        .header-bar {
            background: linear-gradient(to right, #ff9900, #ff6600, #cc3300); /* Saffron gradient */
            color: white;
            padding: 10px 0; /* Reduced padding */
            text-align: center;
            font-size: 1.6em; /* Decreased font size */
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        .header-title {
            font-size: 1.8em; /* Decreased font size */
            font-weight: bold;
            margin-bottom: 5px;
            color: black;  /* Changed color to black */
        }

        .username {
            font-size: 1.1em;
            font-weight: 400;
            margin-top: 5px;
        }

        /* Main content */
        h1 {
            text-align: center;
            color: #ff6600; /* Bright saffron color */
            font-size: 2.5em;
            font-weight: bold;
            margin-top: 50px;
        }

        .container {
            width: 50%;
            margin: 30px auto;
            padding: 30px;
            background-color: #fff; /* Corrected to pure white */
            border-radius: 12px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
            text-align: left;
        }

        .container:hover {
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            transform: scale(1.02);
        }

        .form-label {
            font-size: 18px;
            font-weight: 600;
            color: #3c3c3c;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="file"], textarea {
            width: 100%;
            padding: 15px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 16px;
            background-color: #fff; /* Soft saffron background removed */
            transition: all 0.3s ease-in-out;
        }

        input[type="text"]:focus, textarea:focus, input[type="file"]:focus {
            border-color: #ff6600;
            background-color: #fff;
            box-shadow: 0 0 8px rgba(255, 102, 0, 0.4);
        }

        textarea {
            resize: vertical;
        }

        button {
            width: 100%;
            padding: 15px;
            background-color: #ff6600; /* Saffron color */
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #cc3300; /* Darker saffron shade */
            transform: translateY(-3px);
        }

        .debug-info {
            font-size: 14px;
            color: #fff;
            text-align: center;
            margin-bottom: 10px;
        }

        .form-section {
            margin-bottom: 25px;
        }

        .form-section:last-child {
            margin-bottom: 0;
        }

        /* Footer */
        .footer {
            background-color: #3c3c3c;
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 1em;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .footer a {
            color: #ff9900;
            text-decoration: none;
            font-weight: bold;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 80%;
                padding: 20px;
            }

            h1 {
                font-size: 2.5em;
            }

            .header-title {
                font-size: 1.6em;
            }

            .username {
                font-size: 1em;
            }
        }

    </style>
</head>
<body>
    <!-- Header Bar with blog title and username -->
    <div class="header-bar">
        <div class="header-title">Add a New Blog</div>
        <div class="username">Author Name: ${username}</div>
    </div>

    <!-- Form for creating a post -->
    <div class="container">
        <form action="${pageContext.request.contextPath}/savePost" method="post" enctype="multipart/form-data">

            <!-- Hidden input to pass the username -->
            <input type="hidden" name="username" value="${username}" />

            <!-- Input for post title -->
            <div class="form-section">
                <label for="title" class="form-label">Title:</label>
                <input type="text" id="title" name="title" required placeholder="Enter blog title">
            </div>

            <!-- Textarea for post description -->
            <div class="form-section">
                <label for="description" class="form-label">Description:</label>
                <textarea id="description" name="description" rows="6" placeholder="Enter blog description" required></textarea>
            </div>

            <!-- Input for hashtags -->
            <div class="form-section">
                <label for="hashtags" class="form-label">Hashtags (comma-separated):</label>
                <input type="text" id="hashtags" name="hashtags" placeholder="#hashtag1, #hashtag2">
            </div>

            <!-- Input for image file -->
            <div class="form-section">
                <label for="image" class="form-label">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*">
            </div>

            <!-- Submit button -->
            <button type="submit">Add Post</button>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Your Blog Platform. All rights reserved. | <a href="#">Privacy Policy</a></p>
    </div>
</body>
</html>