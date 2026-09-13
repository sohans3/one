<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        /* ----------------------------------------------
           ROOT & RESET
        ------------------------------------------------ */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --primary: #0a2540;
            --accent: #00d4ff;
            --muted: #5b6f82;
            --card: #ffffff;
            --surface: #f6f9fc;
            --success: #28a745;
            --radius: 16px;
            --container: 1200px;
            --shadow-sm: 0 8px 24px rgba(10, 37, 64, 0.06);
            --shadow-hover: 0 20px 40px rgba(10, 37, 64, 0.10);
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ----------------------------------------------
           BUTTONS & HELPERS
        ------------------------------------------------ */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1rem;
            border: none;
            cursor: pointer;
            transition: 0.2s ease;
        }

        .btn-primary {
            background: var(--accent);
            color: #042233;
        }
        .btn-primary:hover {
            background: #00c8f0;
            transform: scale(1.02);
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.25);
            color: white;
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.08);
        }

        .muted {
            color: var(--muted);
        }
        .text-center {
            text-align: center;
        }

        /* ----------------------------------------------
           HEADER
        ------------------------------------------------ */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(8px);
            border-bottom: 1px solid rgba(10, 37, 64, 0.04);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
        }

        .brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 1.5rem;
            letter-spacing: -0.02em;
        }
        .brand .accent {
            color: var(--accent);
        }

        .main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        .main-nav li a {
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            transition: 0.15s;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .main-nav li a:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 6px 6px 6px 18px;
            min-width: 220px;
        }
        .search-wrap input {
            border: none;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 0.95rem;
            padding: 6px 0;
        }
        .search-wrap button {
            background: var(--primary);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 8px 16px;
            cursor: pointer;
            font-weight: 500;
            transition: 0.15s;
        }
        .search-wrap button:hover {
            background: #1c3a5e;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            color: var(--primary);
            cursor: pointer;
            padding: 6px;
            border-radius: 40px;
            transition: 0.15s;
        }
        .icon-btn:hover {
            background: var(--surface);
        }

        .cart {
            position: relative;
            display: flex;
            align-items: center;
            gap: 4px;
            padding: 6px 10px;
            border-radius: 40px;
            font-weight: 500;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: #042233;
            font-weight: 700;
            font-size: 0.7rem;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* mobile menu */
        #mobileMenu {
            background: var(--bg);
            border-top: 1px solid rgba(10, 37, 64, 0.04);
            padding: 12px 0;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        #mobileMenu ul a {
            display: block;
            padding: 10px 0;
            font-weight: 500;
            border-bottom: 1px solid rgba(0,0,0,0.02);
        }

        /* ----------------------------------------------
           HERO
        ------------------------------------------------ */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background:
                linear-gradient(135deg, rgba(10, 37, 64, 0.7), rgba(10, 37, 64, 0.5)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 460px;
            padding: 60px 20px;
            border-radius: 0 0 var(--radius) var(--radius);
            margin-bottom: 8px;
        }
        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3rem;
            letter-spacing: -0.02em;
            margin-bottom: 16px;
        }
        .hero p {
            max-width: 700px;
            margin: 0 auto 28px;
            opacity: 0.9;
            font-size: 1.1rem;
        }
        .hero .actions {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* ----------------------------------------------
           SECTIONS
        ------------------------------------------------ */
        .section {
            padding: 48px 0;
        }
        .section-title {
            text-align: center;
            margin-bottom: 6px;
        }
        .section-sub {
            text-align: center;
            color: var(--muted);
            margin-bottom: 28px;
        }

        /* categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
        }
        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 20px 12px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            transition: 0.2s;
            cursor: pointer;
            border: 1px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent);
        }
        .cat-card .icon {
            font-size: 2rem;
            color: var(--accent);
            margin-bottom: 8px;
        }

        /* products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            transition: 0.2s;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-hover);
        }
        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .product-body {
            padding: 16px 16px 8px;
            flex: 1;
        }
        .product-body h5 {
            font-size: 1rem;
            margin-bottom: 4px;
        }
        .product-body .category-tag {
            font-size: 0.8rem;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.03em;
        }
        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 8px 0 4px;
        }
        .price-current {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .price-old {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 0.9rem;
            margin-left: 6px;
        }
        .rating {
            color: #f1c40f;
            font-size: 0.9rem;
        }
        .product-footer {
            padding: 8px 16px 16px;
            display: flex;
            gap: 10px;
        }
        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.15s;
        }
        .add-btn:hover {
            background: #1c3a5e;
        }
        .wish-btn {
            background: transparent;
            border: 1px solid #e2e8f0;
            padding: 8px 12px;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.15s;
        }
        .wish-btn:hover {
            background: #f1f5f9;
        }

        /* deal */
        .deal-box {
            display: flex;
            gap: 24px;
            background: var(--surface);
            border-radius: var(--radius);
            overflow: hidden;
            align-items: stretch;
        }
        .deal-box img {
            width: 50%;
            object-fit: cover;
            min-height: 280px;
        }
        .deal-content {
            padding: 32px 28px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .timer {
            display: flex;
            gap: 12px;
            margin: 16px 0;
        }
        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px 10px;
            border-radius: 10px;
            min-width: 70px;
            text-align: center;
        }
        .time-box span:first-child {
            font-size: 1.6rem;
            font-weight: 700;
            display: block;
        }
        .deal-price {
            font-size: 1.8rem;
            font-weight: 700;
        }
        .deal-discount {
            background: #ff4757;
            color: white;
            padding: 4px 12px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 0.9rem;
        }

        /* testimonials */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 16px;
        }
        .testimonial-card {
            min-width: 280px;
            background: white;
            padding: 20px;
            border-radius: var(--radius);
            box-shadow: var(--shadow-sm);
        }
        .testimonial-card .rating {
            font-size: 1rem;
            margin-bottom: 8px;
        }

        /* newsletter */
        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: var(--radius);
            padding: 40px 30px;
            text-align: center;
        }
        .newsletter form {
            display: flex;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
            margin-top: 12px;
        }
        .newsletter input {
            padding: 12px 20px;
            border-radius: 60px;
            border: none;
            min-width: 260px;
            font-size: 1rem;
        }
        .newsletter .btn-primary {
            background: var(--accent);
            color: #042233;
        }

        /* footer */
        footer {
            padding: 40px 0 20px;
            border-top: 1px solid rgba(10, 37, 64, 0.04);
            color: var(--muted);
        }
        .footer-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 32px;
            justify-content: space-between;
        }
        .footer-col p {
            margin-top: 8px;
            max-width: 300px;
        }
        .footer-socials {
            display: flex;
            gap: 12px;
            margin-top: 12px;
        }
        .footer-links {
            display: flex;
            gap: 40px;
            flex-wrap: wrap;
        }
        .footer-links div {
            font-weight: 600;
            color: var(--primary);
        }
        .footer-links div span {
            display: block;
            font-weight: 400;
            color: var(--muted);
            line-height: 2;
        }
        .footer-bottom {
            text-align: center;
            margin-top: 28px;
            font-size: 0.85rem;
            border-top: 1px solid rgba(0,0,0,0.04);
            padding-top: 20px;
        }

        /* ----------------------------------------------
           RESPONSIVE
        ------------------------------------------------ */
        @media (max-width: 1100px) {
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 820px) {
            .main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products-grid { grid-template-columns: repeat(2, 1fr); }
            .deal-box { flex-direction: column; }
            .deal-box img { width: 100%; height: 220px; }
            .hero h1 { font-size: 2.2rem; }
        }
        @media (max-width: 550px) {
            .categories-grid { grid-template-columns: 1fr 1fr; }
            .products-grid { grid-template-columns: 1fr; }
            .search-wrap { min-width: 150px; }
            .search-wrap input { width: 100px; }
            .header-actions .icon-btn { font-size: 1rem; }
            .hero h1 { font-size: 1.8rem; }
        }
        @media (max-width: 420px) {
            .categories-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

<!-- ==============================================
     HEADER
     ============================================== -->
<header>
    <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:12px;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
                <i class="fas fa-bars"></i>
            </button>
            <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
        </div>

        <nav class="main-nav" aria-label="Primary">
            <ul>
                <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                <li><a href="#categories"><em class="fas fa-th-large"></em> Categories</a></li>
                <li><a href="#products"><em class="fas fa-fire"></em> Trending</a></li>
                <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:12px;">
            <div class="search-wrap" role="search">
                <input type="text" id="searchInput" placeholder="Search products..." aria-label="Search" />
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>

            <div class="header-actions">
                <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user"></i></a>
                <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
                <a class="cart" href="#" id="cartBtn" aria-label="Cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu" style="display:none;">
        <div class="container">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
            </ul>
        </div>
    </div>
</header>

<!-- ==============================================
     HERO
     ============================================== -->
<section class="hero">
    <div class="container">
        <h1>New Winter Collection<br />Premium Picks</h1>
        <p>Discover the latest in fashion, tech, and accessories — curated for you. Limited deals &amp; free shipping.</p>
        <div class="actions">
            <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
            <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
        </div>
    </div>
</section>

<!-- ==============================================
     CATEGORIES
     ============================================== -->
<section class="section" id="categories">
    <div class="container">
        <h2 class="section-title">Shop by Category</h2>
        <p class="section-sub">Browse our curated collections</p>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>
</section>

<!-- ==============================================
     PRODUCTS
     ============================================== -->
<section class="section" id="products">
    <div class="container">
        <h2 class="section-title">Trending Products</h2>
        <p class="section-sub">Popular picks based on recent activity</p>
        <div class="products-grid" id="productsGrid"></div>
    </div>
</section>

<!-- ==============================================
     DEAL / FLASH SALE
     ============================================== -->
<section class="section" id="deals">
    <div class="container">
        <h2 class="section-title">Flash Sale</h2>
        <p class="section-sub">Limited-time offers — don't miss out!</p>
        <div class="deal-box">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" />
            <div class="deal-content">
                <h3>MacBook Air M2</h3>
                <p class="muted">Thin, light, and powerful — now with M2 performance.</p>
                <div class="timer" aria-hidden="true">
                    <div class="time-box"><span id="dealDays">0</span>Days</div>
                    <div class="time-box"><span id="dealHours">00</span>Hrs</div>
                    <div class="time-box"><span id="dealMinutes">00</span>Min</div>
                    <div class="time-box"><span id="dealSeconds">00</span>Sec</div>
                </div>
                <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
                    <div>
                        <span class="deal-price">$999</span>
                        <span class="price-old">$1,199</span>
                    </div>
                    <span class="deal-discount">-17%</span>
                </div>
                <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                <button class="btn btn-primary" id="buyDeal" style="margin-top:8px;">Buy Now</button>
            </div>
        </div>
    </div>
</section>

<!-- ==============================================
     TESTIMONIALS
     ============================================== -->
<section class="section">
    <div class="container">
        <h2 class="section-title">What our customers say</h2>
        <p class="section-sub">Real reviews from verified buyers</p>
        <div class="testimonials" id="testimonials">
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"Fast shipping and excellent support. Exceeded my expectations!"</p>
                <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" />
                    <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★☆</div>
                <p>"Great selection, smooth checkout. Will definitely shop again."</p>
                <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
                    <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" />
                    <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"Amazing quality and the customer service is top-notch."</p>
                <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="James" style="width:44px;height:44px;border-radius:50%;object-fit:cover;" />
                    <div><strong>James Carter</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ==============================================
     NEWSLETTER
     ============================================== -->
<section class="section">
    <div class="container">
        <div class="newsletter">
            <h3>Stay in the loop</h3>
            <p>Subscribe to get exclusive offers &amp; new arrivals</p>
            <form id="newsletterForm" onsubmit="return false;">
                <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
                <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
            </form>
            <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
        </div>
    </div>
</section>

<!-- ==============================================
     FOOTER
     ============================================== -->
<footer>
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <div style="font-weight:700;font-size:1.3rem;">NexusShop</div>
                <p class="muted">A modern e‑commerce demo built with HTML, CSS &amp; JavaScript.</p>
                <div class="footer-socials">
                    <a class="icon-btn" href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
                    <a class="icon-btn" href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a class="icon-btn" href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="footer-links">
                <div>Company <span>About</span><span>Careers</span><span>Press</span></div>
                <div>Support <span>Help Center</span><span>Shipping</span><span>Contact</span></div>
            </div>
        </div>
        <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
</footer>

<!-- ==============================================
     JAVASCRIPT
     ============================================== -->
<script>
    // --------------------------------------------------------------
    // DATA
    // --------------------------------------------------------------
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, badge: null, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
        { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, badge: null, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
        { id: 5, title: 'Sony A7 IV Camera', price: 2499, oldPrice: null, rating: 5, reviews: 42, badge: null, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
        { id: 6, title: 'Chanel No. 5', price: 120, oldPrice: null, rating: 5, reviews: 189, badge: null, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: null, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, badge: null, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
    ];

    // --------------------------------------------------------------
    // STATE
    // --------------------------------------------------------------
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');

    // --------------------------------------------------------------
    // RENDER FUNCTIONS
    // --------------------------------------------------------------
    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `
                <div class="icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div class="muted" style="font-size:0.8rem;margin-top:4px;">Explore</div>
            `;
            card.addEventListener('click', () => {
                searchInput.value = cat.name;
                filterProducts(cat.name);
                document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            categoriesGrid.appendChild(card);
        });
    }

    function renderProducts(list) {
        productsGrid.innerHTML = '';
        if (!list.length) {
            productsGrid.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:40px 0;">No products found.</p>';
            return;
        }
        list.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-') ? '#ff4757' : 'var(--success)'};color:white;padding:4px 10px;border-radius:30px;font-weight:700;font-size:0.75rem;display:inline-block;margin-bottom:6px;">${p.badge}</span>` : '';
            card.innerHTML = `
                <img src="${p.img}" alt="${p.title}" loading="lazy" />
                <div class="product-body">
                    <div style="display:flex;justify-content:space-between;align-items:start;">
                        <h5>${p.title}</h5>
                        <span class="category-tag">${p.category}</span>
                    </div>
                    ${badgeHtml}
                    <div class="price-row">
                        <div>
                            <span class="price-current">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--muted);font-size:0.75rem;">(${p.reviews})</span></div>
                    </div>
                </div>
                <div class="product-footer">
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                </div>
            `;
            productsGrid.appendChild(card);
        });

        // attach add listeners
        productsGrid.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', function (e) {
                const id = Number(this.dataset.id);
                addToCart(id);
            });
        });
    }

    // --------------------------------------------------------------
    // CART & FILTER
    // --------------------------------------------------------------
    function addToCart(productId) {
        const p = PRODUCTS.find(x => x.id === productId);
        if (!p) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        // feedback
        const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
        if (btn) {
            const orig = btn.innerHTML;
            btn.innerHTML = 'Added ✓';
