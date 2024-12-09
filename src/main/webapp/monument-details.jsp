<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monument Details</title>
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
        <h2>Monument Details</h2>
        <a href="javascript:void(0);" onclick="showSection('about-dish')">About Monument</a>
        <a href="javascript:void(0);" onclick="showSection('making-recipe')"> History</a>
        <a href="javascript:void(0);" onclick="showSection('blogs')">Blogs</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <h1>Gateway of India</h1>

        <!-- About Dish Section -->
        <div id="about-dish" class="section active">
            <h2>About Gateway Of India</h2>
            <div class="section-text">
                <p>The Gateway of India, a stunning architectural marvel, is one of Mumbai’s most iconic landmarks. Situated on the shores of the Arabian Sea in Colaba, this majestic arch-monument was constructed in 1924 to commemorate the visit of King George V and Queen Mary to India in 1911. Designed by George Wittet in the Indo-Saracenic style, the structure incorporates elements of Hindu and Muslim architectural traditions, making it a unique blend of cultural influences.

Standing at a height of 26 meters, the Gateway was built using yellow basalt and reinforced concrete. It served as the ceremonial entrance to India during the British era, welcoming prominent personalities and officials arriving by sea. The structure also gained historical significance as the departure point for British troops in 1948, marking the symbolic end of British rule in India.

Today, the Gateway of India is a bustling tourist destination, offering a mesmerizing view of the Arabian Sea. Visitors can enjoy ferry rides to nearby attractions like Elephanta Caves. The monument is beautifully illuminated in the evenings, adding to its grandeur. A symbol of Mumbai’s colonial heritage and resilience, the Gateway of India continues to be a source of pride and inspiration for locals and tourists alike.</p>
            </div>
        </div>

        <!-- Making Recipe Section -->
        <div id="making-recipe" class="section">
            <h2>History</h2>
            <div class="section-text">
                <p>The Gateway of India, an iconic symbol of Mumbai, holds a rich historical and architectural legacy. Constructed to commemorate the visit of King George V and Queen Mary to India in December 1911, the foundation stone was laid on March 31, 1913. However, the construction began in earnest only in 1915 and was completed in 1924. Designed by British architect George Wittet, the monument reflects the Indo-Saracenic architectural style, blending elements of Hindu and Muslim designs with colonial influences.

Located on the Apollo Bunder waterfront in Colaba, the Gateway was built using yellow basalt and reinforced concrete. It stands 26 meters tall, with intricate latticework and designs symbolizing a fusion of Indian and European architectural elements. Initially intended as a ceremonial entrance to India for British dignitaries, it served as a grand gesture of imperial significance.

Historically, the Gateway gained prominence as the symbolic entry and exit point during British rule. In February 1948, after India gained independence, the last British troops departed from this very site, marking the end of colonial rule.

Today, the Gateway of India is a major tourist attraction and a heritage site, offering breathtaking views of the Arabian Sea. It serves as a reminder of India’s colonial past while standing as a testament to its enduring spirit and independence. Surrounded by bustling activity, including ferry services to Elephanta Caves and other attractions, the Gateway remains a timeless landmark, deeply embedded in Mumbai’s cultural and historical narrative. Its illuminated structure at night continues to captivate visitors from around the world.






</p>
            </div>
        </div>

        <!-- Blogs Section -->
        <div id="blogs" class="section">
            <h2>Blogs</h2>
            <div class="section-text">
                <p>The Gateway of India: A Timeless Icon of Mumbai

Nestled on the shores of the Arabian Sea, the Gateway of India stands as one of Mumbai’s most prominent landmarks and a symbol of its rich historical and cultural heritage. This majestic monument, located in the bustling Colaba district, attracts millions of visitors annually and serves as a reminder of India’s colonial past and its journey to independence.

A Glimpse into History
The Gateway of India was constructed to commemorate the visit of King George V and Queen Mary to India in December 1911. Designed by British architect George Wittet, its foundation stone was laid in 1913, and the monument was completed in 1924. The structure was envisioned in the Indo-Saracenic style, blending Hindu, Muslim, and colonial architectural elements. Its intricate latticework, arches, and basalt construction make it an architectural marvel of its time.

Over the years, the Gateway has witnessed significant historical events, including the departure of the last British troops in February 1948, marking the end of British rule in India. It has since evolved from a ceremonial colonial relic to a proud symbol of India's independence and resilience.

An Architectural Masterpiece
Standing 26 meters tall, the Gateway is a striking blend of grandeur and elegance. Its arch is flanked by intricate carvings, while its four turrets add to its regal appearance. At the time of its construction, it served as the ceremonial entrance for viceroys, governors, and other dignitaries arriving in India by sea.

The Vibrant Hub of Mumbai
Today, the Gateway of India is a bustling hub for tourists and locals alike. Its location near the iconic Taj Mahal Palace Hotel makes it a favorite spot for photographers. From the monument, visitors can embark on ferry rides to the famous Elephanta Caves or simply enjoy the serene view of the Arabian Sea.</p>
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
