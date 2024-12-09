<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Atma:wght@400;700&family=Poppins:wght@300;500&display=swap');
        
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #ff9933, #ffffff, #138808); /* Indian Flag gradient */
            background-attachment: fixed;
            background-size: cover;
            color: #333;
        }
        
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            border: 3px solid #ff9933; /* Saffron border */
        }

        h1 {
            text-align: center;
            font-family: 'Atma', sans-serif;
            font-size: 28px;
            color: #138808; /* Indian green */
        }

        .quote {
            font-size: 14px;
            text-align: center;
            font-style: italic;
            margin-bottom: 20px;
            color: #ff9933;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #ff9933;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #cc7a29;
            transform: scale(1.05);
        }

        .link {
            text-align: center;
            margin-top: 15px;
        }

        .link a {
            color: #138808;
            text-decoration: none;
            font-weight: bold;
        }

        .link a:hover {
            text-decoration: underline;
        }

        .error {
            color: red;
            font-size: 12px;
        }

        .valid {
            border-color: green;
        }

        .invalid {
            border-color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="/user/login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>
        <div class="link">
            <p>Don't have an account? <a href="/user/signup">Sign Up</a></p>
        </div>
    </div>
</body>
</html>
