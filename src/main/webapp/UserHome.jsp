<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User HomePage - Bharat</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F4F4F9;
        }

        /* Navbar */
        .navbar {
            background-color: #B34D00; /* A deep saffron color */
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-left .logo {
            height: 40px;
        }

        .navbar-right {
            display: flex;
            align-items: center;
            gap: 20px;
            position: relative;
        }

        .nav-button {
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 20px;
            text-transform: uppercase;
            position: relative;
        }

        .nav-button:hover {
            background-color: #FF7F50; /* Coral color for hover effect */
        }

        /* Dropdown */
        .dropdown {
            position: relative;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #FF7F50; /* Coral dropdown background */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            z-index: 100;
        }

        .dropdown-menu a {
            display: block;
            padding: 8px 15px;
            text-decoration: none;
            color: white;
            font-size: 14px;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
        }

        .dropdown-menu a:hover {
            background-color: #F4511E; /* Darker coral for hover effect */
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        /* Main Section */
        .main-content {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-image: url('https://t3.ftcdn.net/jpg/08/42/23/84/240_F_842238475_QkDfPVqr3MTlDoM3OSdutqTrIIqbeB2I.jpg');
            background-size: cover;
            background-position: center;
            color: #FFFFFF;
            position: relative;
        }

        .quote-section h1 {
            font-size: 50px;
            font-weight: bold;
            color: #F9A825;
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.8); /* Makes the text pop */
        }

        /* Explore Button */
        .explore-btn {
            margin-top: 20px;
            padding: 12px 30px;
            font-size: 18px;
            font-weight: bold;
            background-color: #FF7F50; /* Coral color */
            color: #FFFFFF;
            border: none;
            border-radius: 25px;
            text-decoration: none;
            text-transform: uppercase;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1;
        }

        .explore-btn:hover {
            background-color: #F4511E; /* A slightly darker coral color for hover */
            transform: scale(1.05); /* Slight zoom effect */
        }

        /* Overlay for Contrast */
        .main-content::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Semi-transparent overlay */
            z-index: 0;
        }

        .quote-section {
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-left">
            <img src="images/india_logo.png" alt="India Logo" class="logo">
        </div>
        <div class="navbar-right">
            <div class="dropdown">
                <a href="#" class="nav-button">States</a>
                <div class="dropdown-menu">
                    <a href="/state/maharashtra">Maharashtra</a>
                    <a href="/state/telangana">Telangana</a>
                    <a href="/state/kerala">Kerala</a>
                    <a href="/state/rajasthan">Rajasthan</a>
                    <a href="/state/tamil-nadu">Tamil Nadu</a>
                    <a href="/state/uttar-pradesh">Uttar Pradesh</a>
                    <a href="/state/gujarat">Gujarat</a>
                    <a href="/state/madhya-pradesh">Madhya Pradesh</a>
                    <a href="/state/punjab">Punjab</a>
                    <a href="/state/west-bengal">West Bengal</a>
                </div>
            </div>

            <a href="/user/gallery" class="nav-button">Gallery</a>
            <a href="/user/avatar" class="nav-button">Profile</a>
            <a href="/user/logout" class="nav-button">Logout</a>
        </div>
    </nav>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="quote-section">
            <h1>Explore the Beauty of India</h1>
            <!-- Explore Button -->
            <a href="/uniqueness-of-india" class="explore-btn">Explore More</a>
        </div>
    </div>
</body>
</html>
