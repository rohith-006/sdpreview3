<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maharashtra - Explore Culture</title>
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
            margin-top: 20px;
            color: #B34D00; /* Saffron color for the title */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        /* Gallery Grid */
        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Image Card */
        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .gallery-item:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4);
        }

        /* Image Style */
        .gallery-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
        }

        /* Caption */
        .gallery-item .caption {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.6); /* Semi-transparent background */
            color: #fff;
            text-align: center;
            padding: 10px;
            font-size: 16px;
            width: 100%;
            text-transform: uppercase;
            font-weight: bold;
        }

        /* Links */
        .gallery-item a {
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>
<body>
    <h1>Discover Maharashtra</h1>
    <div class="gallery">
        <!-- Famous Food Cuisines -->
        <div class="gallery-item">
            <a href="/maharashtra/food">
                <img src="https://imgs.search.brave.com/GVs5i1WdkH3Og0ERqqjZ_xdi_IiAXRn6QYqaP9o6f7E/rs:fit:500:0:0:0/g:ce/aHR0cDovL2hlYmJh/cnNraXRjaGVuLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvbWFp/blBob3Rvcy92YWRh/LXBhdi1yZWNpcGUt/aG93LXRvLW1ha2Ut/dmFkYS1wYXYtd2Fk/YS1wYXYtMi0xMDI0/eDc2OS5qcGVn" alt="Famous Food Cuisines">
                <div class="caption">Famous Food Cuisines in Maharashtra</div>
            </a>
        </div>

        <!-- Majestic Monuments -->
        <div class="gallery-item">
            <a href="/maharashtra/monuments">
                <img src="https://imgs.search.brave.com/ADdyQFfIJ0BcUzqEmMFx7S35zF0R_0eH72WuciJIfrw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Y3VsdHVyYWxpbmRp/YS5uZXQvaWxpaW1h/Z2VzL0dhdGV3YXkt/b2YtSW5kaWEtMi5q/cGc" alt="Majestic Monuments">
                <div class="caption">Majestic Monuments in Maharashtra</div>
            </a>
        </div>

        <!-- Nrithya Kala -->
        <div class="gallery-item">
            <a href="/maharashtra/dance">
                <img src="https://imgs.search.brave.com/xbQ6gP6AWWvxjdRWx4vVQJ2rv4B-1qtC9H8ReG4qBls/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Y2FsZWlkb3Njb3Bl/LmluL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIyLzA4L0ZvbGst/RGFuY2VzLW9mLU1h/aGFyYXNodHJhLUtv/bGktRGFuY2UtMS5q/cGc" alt="Nrithya Kala">
                <div class="caption">Nrithya Kala</div>
            </a>
        </div>

        <!-- Festivals This Season -->
        <div class="gallery-item">
            <a href="/maharashtra/festivals">
                <img src="https://imgs.search.brave.com/zUf5-wZ7C4KhOW4iyMZ83K-5zIWQ10nnvZCztwnFnvY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudHJhdmVsYW5k/bGVpc3VyZWFzaWEu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy9z/aXRlcy8yLzIwMjQv/MDgvMzAxNzQ2NDYv/R2FuZXNoYS5qcGc" alt="Festivals">
                <div class="caption">Festivals This Season</div>
            </a>
        </div>
    </div>
</body>
</html>
