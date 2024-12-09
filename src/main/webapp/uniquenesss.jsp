<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uniqueness of India</title>
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

        /* Intro Section */
        .intro {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .intro h2 {
            font-size: 30px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .intro p {
            font-size: 16px;
            color: #666;
            line-height: 1.6;
        }

        /* Section Styles */
        .section {
            margin-bottom: 30px;
            display: none;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .section h2 {
            font-size: 30px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .section-content {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .section-content img {
            width: 45%;
            border-radius: 10px;
        }

        .section-text {
            flex: 1;
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
        <h2>Uniqueness of India</h2>
        <a href="javascript:void(0);" onclick="showSection('intro')">Intro</a>
        <a href="javascript:void(0);" onclick="showSection('history')">History</a>
        <a href="javascript:void(0);" onclick="showSection('food')">Food Cuisines</a>
        <a href="javascript:void(0);" onclick="showSection('culture')">Culture</a>
        <a href="javascript:void(0);" onclick="showSection('dance')">Dance Forms</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Intro Section -->
        <div id="intro" class="intro">
            <h2>Welcome to the Uniqueness of India</h2>
            <p>India, the land of vibrant cultures, ancient traditions, and breathtaking landscapes, is a nation like no other. From the majestic Himalayas to the serene beaches of Kerala, India’s uniqueness lies in its diversity. It's a place where history meets modernity, where every street tells a story, and where every meal is a celebration. India is a land where every corner tells a story, a rich tapestry of cultures, religions, and languages that coexist harmoniously. Its bustling cities blend tradition with innovation, while its rural landscapes preserve ancient ways of life. The majestic temples of the South, the forts of Rajasthan, and the serene backwaters of Kerala are testaments to India’s timeless beauty. The country’s festivals, from Diwali to Onam, are a vibrant celebration of life, bringing communities together in joyous unity. The warmth of its people, the hospitality, and the ever-evolving spirit of India make it a place that is both ancient and modern, yet always uniquely its own.</p>
        </div>

        <!-- History Section -->
        <div id="history" class="section">
            <h2>History</h2>
            <div class="section-content">
                <img src="https://m.media-amazon.com/images/I/51LQpgvS2SL._SY445_SX342_.jpg" alt="History of India">
                <div class="section-text">
<p>India's history spans over 5,000 years, making it one of the oldest civilizations in the world. From the Indus Valley Civilization to the Mauryan and Gupta empires, India's past is filled with tales of innovation, resilience, and cultural evolution. The Indus Valley, one of the world's earliest urban centers, gave rise to remarkable achievements in architecture, drainage systems, and trade. As time progressed, the Vedic period laid the foundation for Hinduism, one of the world's major religions, which continues to shape the cultural and spiritual life of India today.

The Mauryan Empire, under the leadership of Emperor Ashoka, unified much of the Indian subcontinent and promoted the spread of Buddhism, which would eventually reach many parts of Asia. The Gupta Empire, often regarded as a golden age of Indian culture, saw advancements in science, mathematics, literature, and the arts. India’s scholars made significant contributions in areas like algebra, trigonometry, and the concept of zero.

The medieval period saw the rise of powerful kingdoms, the spread of Islam, and the establishment of the Mughal Empire. The Mughal period brought monumental changes to India’s architecture, culture, and art, with the Taj Mahal being one of its most iconic symbols.

India’s struggle for independence, led by figures like Mahatma Gandhi and Jawaharlal Nehru, culminated in freedom from British colonial rule in 1947. Today, India is a diverse and vibrant democracy, with a rich cultural heritage that continues to influence the world in various fields, including politics, economics, and technology.</p>                </div>
            </div>
        </div>

        <!-- Food Cuisines Section -->
        <div id="food" class="section">
            <h2>Food Cuisines</h2>
            <div class="section-content">
                <img src="https://sundayguardianlive.com/wp-content/uploads/2022/12/Indian-Cuisine-Fifth-Best-In-The-World.jpg" alt="Indian Food">
                <div class="section-text">
<p>Indian cuisine is a rich tapestry of flavors, spices, and diverse cooking styles. It is one of the most diverse culinary traditions in the world, characterized by an extensive range of ingredients, techniques, and cultural influences from various regions of India. Indian food varies significantly from state to state, with each region having its own distinct dishes, based on geography, climate, and history.

The Northern region of India is known for its hearty and rich dishes. Commonly used ingredients in the North include wheat, dairy products like milk, yogurt, and paneer (cottage cheese), and spices like cumin, coriander, and garam masala. Some famous dishes from the North include butter chicken, dal makhani, and biryani. In the South, rice is the staple food, and the cuisine is known for its spicy curries, dosas, and sambar. Coconut, tamarind, and curry leaves are frequently used in South Indian cooking.

The Western part of India is famous for its use of sugar and spices in dishes. Gujarat, for example, is known for its vegetarian cuisine, with dishes like dhokla, khandvi, and the famous Gujarati thali. In Maharashtra, food ranges from spicy curries to street foods like vada pav and pav bhaji.

The Eastern part of India, particularly Bengal, is renowned for its fish dishes and sweets like rosogolla and sandesh. Street food plays a crucial role in Indian culinary culture. From the pani puri of Mumbai to the chole bhature of Delhi, Indian street food offers a vast range of delicious snacks that are an essential part of Indian food culture.     </p>           </div>
            </div>
        </div>

        <!-- Culture Section -->
        <div id="culture" class="section">
            <h2>Culture</h2>
            <div class="section-content">
                <img src="https://t4.ftcdn.net/jpg/07/88/07/49/240_F_788074928_gRLU1pd1trHfuzUj0eaDk2l4kG5TduU5.jpg" alt="Indian Culture">
                <div class="section-text">
<p>India has a unique and deeply rooted culture that spans over 5,000 years of history. It is characterized by its vibrant diversity, rich traditions, customs, languages, and philosophies. Indian culture is a blend of various religious, ethnic, and cultural groups, and this diversity is celebrated in the form of festivals, arts, rituals, and community practices.

One of the most prominent aspects of Indian culture is its religious diversity. India is the birthplace of four major religions—Hinduism, Buddhism, Jainism, and Sikhism—and these religions have played a significant role in shaping the country’s cultural identity. Hinduism, with its vast pantheon of gods and goddesses, has influenced Indian art, music, dance, and even architecture, as seen in the grandeur of the temples spread across the country. Buddhism, which originated in India, has left a lasting impact, especially in regions like Bihar and Uttar Pradesh, where historical sites like Bodh Gaya attract millions of visitors.

Festivals are an important part of Indian culture. Some of the major festivals celebrated across the country include Diwali, Holi, Eid, Christmas, Pongal, and Navratri. These festivals often involve elaborate rituals, prayers, and cultural performances. Diwali, the festival of lights, for instance, symbolizes the victory of light over darkness, and people celebrate it by lighting lamps, bursting fireworks, and sharing sweets with loved ones.</p>                </div>
            </div>
        </div>

        <!-- Dance Forms Section -->
        <div id="dance" class="section">
            <h2>Dance Forms</h2>
            <div class="section-content">
                <img src="https://t4.ftcdn.net/jpg/08/11/53/37/240_F_811533772_IBYJafeeNLWO7PRVnf0qjB0DPYwkhqyB.jpg" alt="Indian Dance Forms">
                <div class="section-text">
<p>Indian classical dance is one of the most ancient and revered art forms, with roots deeply embedded in Indian history and mythology. It is not just a form of artistic expression but also a means of telling stories, conveying emotions, and presenting religious and spiritual teachings.

There are eight recognized classical dance forms in India, each originating from different regions of the country. These forms are Bharatanatyam, Kathak, Kathakali, Odissi, Manipuri, Kuchipudi, Mohiniyattam, and Sattriya.

Bharatanatyam originated in Tamil Nadu and is one of the oldest and most popular forms of Indian classical dance. It is known for its graceful movements, intricate footwork, and expressive hand gestures (mudras). Bharatanatyam is often performed in temples as a devotional offering to the gods.

Kathak is a dance form from Northern India that is known for its storytelling, rhythmic foot movements, spins, and intricate hand gestures. The dancer often narrates a story through their expressions and movements, typically accompanied by classical music and tabla rhythms.

Kathakali, from Kerala, is a highly stylized dance-drama that combines elements of dance, music, and acting. The performers wear elaborate costumes and makeup, and the dances often depict stories from Hindu epics like the Ramayana and Mahabharata.

Odissi, from Odisha, is one of the oldest surviving dance forms. It is characterized by its fluid movements, sculpturesque poses, and strong connection to the religious themes and devotion to Lord Jagannath.

Manipuri is a classical dance form from the northeastern state of Manipur. It is known for its graceful, soft movements and focus on spiritual expression, often depicting themes of love and devotion.</p>              </div>
            </div>
        </div>

        <!-- Explore More Button -->
    </div>

    <script>
        // Function to show the respective section when clicked
        function showSection(sectionId) {
            // Hide all sections
            const sections = document.querySelectorAll('.section');
            sections.forEach((section) => {
                section.style.display = 'none';
            });

            // Show the clicked section
            const introSection = document.getElementById('intro');
            if (sectionId === 'intro') {
                introSection.style.display = 'block';
            } else {
                introSection.style.display = 'none';
                document.getElementById(sectionId).style.display = 'block';
            }
        }

        // Show the intro section by default
        showSection('intro');
    </script>
</body>
</html>
