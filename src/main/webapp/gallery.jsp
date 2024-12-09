<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery - Indian Culture & Heritage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .gallery-container {
            padding: 20px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .gallery-item {
            width: 300px; /* Increased size */
            border: 2px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .gallery-item img {
            width: 100%;
            height: 200px; /* Increased height */
            object-fit: cover;
        }

        .gallery-caption {
            padding: 10px;
            font-size: 18px; /* Slightly larger text */
            color: #555;
        }
    </style>
</head>
<body>
    <div class="gallery-container">
        <h1>Indian Culture & Heritage Gallery</h1>
        <div class="gallery">
            <!-- Gallery Item 1 -->
                        <!-- Gallery Item 2 -->
            <div class="gallery-item">
                <img src="https://t4.ftcdn.net/jpg/09/59/91/69/240_F_959916926_19EbWJ29OQUu2xwb78Z2kR4ySHnOTyvn.jpg" alt="Culture 2">
                <p class="gallery-caption">Traditional Dances</p>
            </div>
            <!-- Gallery Item 3 -->
            <div class="gallery-item">
                <img src="https://t3.ftcdn.net/jpg/07/17/94/06/240_F_717940633_83vMZHyrXvZS3TbcSsg9nmLMFCipKG7G.jpg" alt="Culture 3">
                <p class="gallery-caption">Festive Celebrations</p>
            </div>
            <!-- Gallery Item 4 -->
            <div class="gallery-item">
                <img src="https://t4.ftcdn.net/jpg/06/18/15/37/240_F_618153707_XLIUucmJFMrtkwhgIxqdKZfguWeioR0Z.jpg" alt="Culture 4">
                <p class="gallery-caption">Heritage Artifacts</p>
            </div>
            <div class="gallery-item">
                <img src="https://t4.ftcdn.net/jpg/07/88/07/49/240_F_788074928_gRLU1pd1trHfuzUj0eaDk2l4kG5TduU5.jpg" alt="Culture 3">
                <p class="gallery-caption">Indian Culture</p>
            </div>
            <div class="gallery-item">
                <img src="https://t4.ftcdn.net/jpg/09/88/42/43/240_F_988424303_hyBEUKxb7PtdRD8MLHyDe7MEB9Dezt9x.jpg" alt="Culture 3">
                <p class="gallery-caption">The Taj Mahal</p>
            </div>
            <div class="gallery-item">
                <img src="https://t3.ftcdn.net/jpg/09/21/88/24/240_F_921882450_ZWNFiYNSWl9PE9NAHgXooLdsHK38Ko6Z.jpg" alt="Culture 3">
                <p class="gallery-caption">Rameshwar Temple</p>
            </div>
            <div class="gallery-item">
                <img src="https://t3.ftcdn.net/jpg/08/97/54/52/240_F_897545203_ZyO1qjaqLBzZU8KnnDktXgDMkLumJy6g.jpg" alt="Culture 3">
                <p class="gallery-caption">Old women Pottery</p>
            </div>
            
        </div>
    </div>
</body>
</html>
