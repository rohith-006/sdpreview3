<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maharashtra Cuisine - Explore Culture</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F4F4F9;
        }

        h1 {
            text-align: center;
            color: #B34D00;
            margin: 20px 0;
            font-size: 2.5rem;
        }

        /* Food Grid */
        .food-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin: 0 5%;
        }

        .food-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }

        .food-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .food-title {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            padding: 10px 0;
            background-color: #F9F9F9; /* Light background for visibility */
            border-bottom: 1px solid #EEE; /* Divider */
        }

        .food-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .know-more {
            text-decoration: none;
            background-color: #FF7F50;
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            padding: 10px 20px;
            border-radius: 5px;
            position: absolute;
            bottom: 15px;
            left: 50%;
            transform: translateX(-50%);
            transition: background-color 0.3s ease;
        }

        .know-more:hover {
            background-color: #F4511E;
        }
    </style>
</head>
<body>
    <h1>Famous Food Cuisines in Maharashtra</h1>
    <div class="food-grid">
        <!-- Card 1 -->
        <div class="food-card">
            <div class="food-title">Vada Pav</div>
            <img src="https://ministryofcurry.com/wp-content/uploads/2024/06/vada-pav-3.jpg" alt="Vada Pav" class="food-image">
            <a href="/food/vada-pav" class="know-more">Know More</a>
        </div>
        <!-- Card 2 -->
        <div class="food-card">
            <div class="food-title">Puran Poli</div>
            <img src="https://www.ruchkar.in/cdn/shop/articles/iStock-1141418070.jpg?v=1583487296" alt="Pav Bhaji" class="food-image">
            <a href="/food/pav-bhaji" class="know-more">Know More</a>
        </div>
        <!-- Card 3 -->
        <div class="food-card">
            <div class="food-title">Poha</div>
            <img src="https://media.vogue.in/wp-content/uploads/2020/10/poha-recipe-1920x1080.jpg" alt="Poha" class="food-image">
            <a href="/food/poha" class="know-more">Know More</a>
        </div>
    </div>
</body>
</html>
