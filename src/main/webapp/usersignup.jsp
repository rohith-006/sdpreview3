<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Signup</title>
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
            transition: filter 0.3s ease;  /* For smooth transition of blur effect */
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

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .radio-group {
            display: flex;
            justify-content: space-between;
            margin: 15px 0;
        }

        .radio-group label {
            font-weight: bold;
            display: flex;
            align-items: center;
            cursor: pointer;
            position: relative;
            width: 45%; /* Adjust width to balance the two options */
        }

        .radio-group input[type="radio"] {
            margin-right: 10px;
            transform: scale(1); /* Set a fixed size */
            cursor: pointer;
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

        /* Styles for the welcome message */
        #welcomeMessage {
            display: none;
            position: fixed;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            border: 3px solid #ff9933; /* Saffron border */
            z-index: 1000;  /* Ensure the message appears above other content */
            width: 80%;
            text-align: center;
        }
        
        #welcomeMessage button {
            background-color: #138808;
            border: none;
            padding: 10px 20px;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        #welcomeMessage button:hover {
            background-color: #105d06;
        }

        /* Apply blur to the background container */
        .blurred {
            filter: blur(5px);
        }
    </style>
</head>
<body>
    <div class="container" id="signupForm">
        <h1>Sign Up</h1>
        <p class="quote">"Vasudhaiva Kutumbakam" - The world is one family</p>
        <form name="signupForm" action="/user/signup" method="post" onsubmit="return validateSignupForm()">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>
            <span id="usernameError" class="error"></span>

            <label for="email">Gmail:</label>
            <input type="email" id="email" name="email" placeholder="Enter your Gmail" required oninput="validateEmail()">
            <span id="emailError" class="error"></span>

            <label>Nationality:</label>
            <div class="radio-group">
                <label>
                    <input type="radio" name="nationality" value="Indian" required>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_India.svg" alt="Indian Flag" style="width: 20px; height: 15px;"> Proud Indian
                </label>
                <label>
                    <input type="radio" name="nationality" value="Non-Indian" required>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/4/4c/Globe_icon.svg" alt="Globe" style="width: 20px; height: 15px;"> Global Friend
                </label>
            </div>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required oninput="validatePassword()">
            <span id="passwordError" class="error"></span>

            <button type="submit">Sign Up</button>
        </form>
        <div class="link">
            <p>Already have an account? <a href="/user/login">Login</a></p>
        </div>
    </div>

    <div id="welcomeMessage">
        <h2>Welcome to the Journey of India's Rich Heritage!</h2>
        <p>Thank you for joining us! Your step towards exploring the culture and beauty of India begins now.</p>
        <p>Click below to log in and start your adventure into the heritage of India.</p>
        <button onclick="window.location.href='/user/login'">Go to Login</button>
    </div>

    <script>
       

        function validateEmail() {
            const email = document.signupForm.email.value;
            const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            const emailField = document.getElementById('email');
            const emailError = document.getElementById('emailError');

            if (emailRegex.test(email)) {
                emailField.classList.add('valid');
                emailField.classList.remove('invalid');
                emailError.innerHTML = 'Email is valid';
                emailError.style.color = 'green';
            } else {
                emailField.classList.remove('valid');
                emailField.classList.add('invalid');
                emailError.innerHTML = 'Please enter a valid email address';
                emailError.style.color = 'red';
            }
        }

        function validatePassword() {
            const password = document.signupForm.password.value;
            const passwordField = document.getElementById('password');
            const passwordError = document.getElementById('passwordError');

            if (password.length < 8) {
                passwordField.classList.remove('valid');
                passwordField.classList.add('invalid');
                passwordError.innerHTML = 'Password should contain at least 8 characters';
                passwordError.style.color = 'red';
            } else {
                passwordField.classList.add('valid');
                passwordField.classList.remove('invalid');
                passwordError.innerHTML = 'Password is valid';
                passwordError.style.color = 'green';
            }
        }

        function validateSignupForm() {
            const username = document.signupForm.username.value;
            const email = document.signupForm.email.value;
            const password = document.signupForm.password.value;

            if (username === '' || email === '' || password === '') {
                alert('Please fill out all fields');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>