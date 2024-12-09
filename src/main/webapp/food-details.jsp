<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Details</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            height: 100vh;
            background-color: #f5f5f5;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #ff6700;
            color: white;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar a {
            display: block;
            font-size: 18px;
            color: white;
            text-decoration: none;
            margin: 15px 0;
            padding: 10px;
            border-radius: 5px;
            background-color: #e65c00;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #cc5200;
        }

        /* Main Content Area */
        .main-content {
            margin-left: 250px;
            width: calc(100% - 250px);
            padding: 20px;
        }

        h1 {
            font-size: 36px;
            color: #ff6700;
            text-align: center;
            margin-top: 20px;
        }

        /* Section Styles */
        .section {
            margin-bottom: 30px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: none; /* Initially hide all sections */
        }

        .section.active {
            display: block; /* Show the active section */
        }

        .section h2 {
            font-size: 30px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .section-text p {
            font-size: 16px;
            color: #666;
            line-height: 1.6;
        }

        .recipe-section {
            display: flex;
            flex-direction: row;
            gap: 30px;
        }

        .recipe-content {
            flex: 1;
        }

        .recipe-sidebar {
            width: 200px;
            background-color: #f1f1f1;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .recipe-sidebar h3 {
            margin-bottom: 20px;
        }

        /* Button Styling */
        .explore-btn {
            display: block;
            margin: 30px auto;
            width: 200px;
            padding: 10px 15px;
            background-color: #ff6700;
            color: white;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
        }

        .explore-btn:hover {
            background-color: #e65c00;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Dish Details</h2>
        <a href="javascript:void(0);" onclick="showSection('about-dish')">About Dish</a>
        <a href="javascript:void(0);" onclick="showSection('making-recipe')">Making Recipe</a>
        <a href="javascript:void(0);" onclick="showSection('blogs')">Blogs</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <h1>Vada Pav</h1>

        <!-- About Dish Section -->
        <div id="about-dish" class="section active">
            <h2>About Dish</h2>
            <div class="section-text">
                <p>Vada pav is a vegetarian fast food dish that originated in Mumbai, India. It consists of a deep-fried potato dumpling (vada) placed in a bread bun (pav) and served with chutney and a green chili pepper.</p>
            </div>
        </div>

        <!-- Making Recipe Section -->
        <div id="making-recipe" class="section">
            <h2>Making Recipe</h2>
            <div class="recipe-section">
                <div class="recipe-content">
                    <h3>Ingredients</h3>
                    <ul>
                        <li><strong>For Vada (Potato filling):</strong> 4 medium-sized potatoes (boiled and mashed), 2 tablespoons oil, 1 teaspoon mustard seeds, 1/2 teaspoon cumin seeds, 1/4 teaspoon turmeric powder, 1-2 green chilies (finely chopped), 1 teaspoon grated ginger, 8-10 curry leaves, 1/2 teaspoon garam masala, Salt to taste, 2 tablespoons chopped coriander leaves, 1 tablespoon lemon juice, 1 tablespoon besan (gram flour), 1 tablespoon rice flour (optional for crispiness).</li>
                        <li><strong>For Batter (for frying the vadas):</strong> 1/2 cup besan (gram flour), 1/4 teaspoon turmeric powder, 1/2 teaspoon red chili powder, Salt to taste, Water as needed.</li>
                        <li><strong>For Assembling:</strong> 4 pav (soft bread rolls), Green chutney, Tamarind chutney, Red chili powder (optional), Salt to taste.</li>
                    </ul>
                    
                    <h3>Method</h3>
                    <ol>
                        <li><strong>Prepare the Vada Filling:</strong> Heat oil in a pan and add mustard seeds, cumin seeds, and curry leaves. Once they splutter, add finely chopped green chilies and grated ginger. Sauté for a minute. Add turmeric powder, mashed potatoes, garam masala, salt, chopped coriander leaves, and lemon juice. Mix and cook for 2-3 minutes. Let it cool and shape into small balls.</li>
                        <li><strong>Prepare the Batter:</strong> In a bowl, combine besan, turmeric powder, red chili powder, and salt. Gradually add water to make a thick batter.</li>
                        <li><strong>Fry the Vadas:</strong> Dip each potato ball into the batter and deep fry in hot oil until golden brown. Drain on paper towels.</li>
                        <li><strong>Assemble the Vada Pav:</strong> Slit each pav, apply green chutney and tamarind chutney, and place the hot vada inside. Sprinkle with red chili powder and salt, and serve hot with extra chutneys and fried green chilies.</li>
                    </ol>
                </div>

               
            </div>
        </div>

        <!-- Blogs Section -->
        <div id="blogs" class="section">
            <h2>Blogs</h2>
            <div class="section-text">
                <p>Blog articles about the dish, its variations, and stories related to it.</p>
            </div>
        </div>
    </div>

    <script>
        // Function to display the selected section
        function showSection(sectionId) {
            // Hide all sections
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => section.classList.remove('active'));

            // Show the clicked section
            const selectedSection = document.getElementById(sectionId);
            selectedSection.classList.add('active');
        }
    </script>
</body>
</html>
