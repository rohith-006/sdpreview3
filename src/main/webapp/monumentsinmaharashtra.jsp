<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monuments in Maharashtra - Explore Culture</title>
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
            color: #8B0000;
            margin: 20px 0;
            font-size: 2.5rem;
        }

        /* Monuments Grid */
        .monument-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin: 0 5%;
        }

        .monument-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }

        .monument-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .monument-title {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            padding: 10px 0;
            background-color: #F9F9F9;
            border-bottom: 1px solid #EEE;
        }

        .monument-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .know-more {
            text-decoration: none;
            background-color: #4682B4;
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
            background-color: #2E5894;
        }
    </style>
</head>
<body>
    <h1>Famous Monuments in Maharashtra</h1>
    <div class="monument-grid">
        <!-- Card 1 -->
        <div class="monument-card">
            <div class="monument-title">Gateway of India</div>
            <img src="https://miro.medium.com/v2/resize:fit:1400/1*DTXfmmagnoAxRcUEWdajMw.jpeg" alt="Gateway of India" class="monument-image">
            <a href="/monuments/gateway-of-india" class="know-more">Know More</a>
        </div>
        <!-- Card 2 -->
        <div class="monument-card">
            <div class="monument-title">Ajanta Caves</div>
            <img src="https://wegobond.com/wp-content/uploads/2023/06/Ajanta-2023.jpg" alt="Ajanta Caves" class="monument-image">
            <a href="/monuments/ajanta-caves" class="know-more">Know More</a>
        </div>
        <!-- Card 3 -->
        <div class="monument-card">
            <div class="monument-title">Shaniwar Wada</div>
            <img src="https://imgs.search.brave.com/LDYPz42Uo2_vrQBeXn0gJdIw2NNKY5PdZ7bSjzc7PNc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9i/L2I1L1NoYW5pd2Fy/d2FkYV9nYXRlLkpQ/Rw" alt="Shaniwar Wada" class="monument-image">
            <a href="/monuments/shaniwar-wada" class="know-more">Know More</a>
        </div>
        <!-- Add more cards as needed -->
    </div>
</body>
</html>
