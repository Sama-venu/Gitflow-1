<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · premium e‑commerce</title>
  <!-- Google Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      background: #0b0e14;
      color: #eef2f6;
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* ----- glassmorphism & gradients ----- */
    .glass {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border: 1px solid rgba(255, 255, 255, 0.06);
      box-shadow: 0 20px 40px -20px rgba(0,0,0,0.8);
    }
    .gradient-text {
      background: linear-gradient(145deg, #b7f0ff, #6ac9ff, #3b9eff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: all 0.25s ease;
      background: white;
      color: #0b0e14;
    }
    .btn-primary {
      background: linear-gradient(145deg, #3b9eff, #0a7aff);
      color: white;
      box-shadow: 0 8px 24px -6px #0a7aff80;
    }
    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 12px 32px -6px #0a7affcc;
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(255,255,255,0.25);
      color: white;
      backdrop-filter: blur(4px);
    }
    .btn-outline:hover {
      background: rgba(255,255,255,0.08);
      border-color: #6ac9ff;
    }
    /* ----- header (sticky glass) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(11, 14, 20, 0.72);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(255,255,255,0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand i { color: #3b9eff; font-size: 1.8rem; }
    .brand span { background: linear-gradient(145deg, #f0f9ff, #b7f0ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    /* navigation */
    .nav-links {
      display: flex;
      align-items: center;
      gap: 8px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #b0c4db;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: rgba(59, 158, 255, 0.12);
      color: white;
    }
    .nav-links a i { font-size: 0.95rem; }
    /* search */
    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.06);
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      border: 1px solid rgba(255,255,255,0.06);
      transition: 0.2s;
      min-width: 220px;
    }
    .search-wrap:focus-within { border-color: #3b9eff; background: rgba(255,255,255,0.08); }
    .search-wrap input {
      background: transparent;
      border: none;
      outline: none;
      color: white;
      font-size: 0.9rem;
      width: 100%;
      padding: 8px 0;
    }
    .search-wrap input::placeholder { color: #7a8aa0; }
    .search-wrap button {
      background: #3b9eff;
      border: none;
      color: white;
      border-radius: 40px;
      padding: 8px 16px;
      cursor: pointer;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      color: #b0c4db;
      font-size: 1.2rem;
      padding: 8px;
      border-radius: 40px;
      transition: 0.2s;
      cursor: pointer;
    }
    .icon-btn:hover { color: white; background: rgba(255,255,255,0.06); }
    .cart-badge {
      position: relative;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .cart-count {
      background: #3b9eff;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      margin-left: 2px;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      color: white;
      font-size: 1.6rem;
      cursor: pointer;
    }
    /* mobile menu */
    #mobileMenu {
      background: #0b0e14;
      border-top: 1px solid rgba(255,255,255,0.04);
      padding: 12px 0;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu a {
      padding: 12px 16px;
      border-radius: 12px;
      color: #b0c4db;
      font-weight: 500;
      display: flex;
      gap: 12px;
      align-items: center;
    }
    #mobileMenu a:hover { background: rgba(255,255,255,0.04); color: white; }

    /* ----- hero (premium) ----- */
    .hero {
      position: relative;
      border-radius: 32px;
      margin: 28px auto 40px;
      padding: 72px 48px;
      background: radial-gradient(ellipse at 20% 30%, #18222e, #0b0e14 70%);
      border: 1px solid rgba(255,255,255,0.04);
      box-shadow: inset 0 0 60px rgba(59, 158, 255, 0.08);
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      top: -40%;
      right: -10%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(59,158,255,0.08) 0%, transparent 70%);
      pointer-events: none;
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.4rem;
      font-weight: 700;
      line-height: 1.2;
      max-width: 700px;
    }
    .hero p {
      font-size: 1.1rem;
      color: #b0c4db;
      max-width: 540px;
      margin: 18px 0 32px;
    }
    .hero .btn-group { display: flex; flex-wrap: wrap; gap: 14px; }

    /* ----- section titles ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 28px;
    }
    .section-head h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 600;
      font-size: 1.8rem;
    }
    .section-head .muted { color: #7a8aa0; font-size: 0.95rem; }

    /* ----- categories (glass) ----- */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: rgba(255,255,255,0.03);
      border: 1px solid rgba(255,255,255,0.04);
      border-radius: 20px;
      padding: 20px 12px;
      text-align: center;
      transition: all 0.25s ease;
      cursor: pointer;
      backdrop-filter: blur(4px);
    }
    .cat-card:hover {
      background: rgba(59, 158, 255, 0.08);
      border-color: #3b9eff55;
      transform: translateY(-6px);
      box-shadow: 0 20px 30px -12px #00000066;
    }
    .cat-card i {
      font-size: 2.2rem;
      color: #6ac9ff;
      margin-bottom: 8px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }
    .cat-card .muted { font-size: 0.75rem; color: #7a8aa0; }

    /* ----- product grid (elegant cards) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: rgba(255,255,255,0.03);
      border-radius: 24px;
      border: 1px solid rgba(255,255,255,0.04);
      overflow: hidden;
      transition: 0.3s ease;
      backdrop-filter: blur(4px);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: #3b9eff44;
      box-shadow: 0 30px 40px -20px #000000cc;
    }
    .product-img {
      height: 200px;
      background: #141a22;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 12px;
      position: relative;
    }
    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 16px;
    }
    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: #3b9eff;
      color: white;
      font-weight: 600;
      font-size: 0.7rem;
      padding: 4px 12px;
      border-radius: 30px;
      letter-spacing: 0.3px;
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: #7a8aa0;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin: 12px 0 6px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { color: #7a8aa0; text-decoration: line-through; font-size: 0.85rem; }
    .rating {
      color: #fbbf24;
      font-size: 0.8rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span { color: #7a8aa0; font-size: 0.7rem; }
    .product-actions {
      padding: 8px 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-actions .add-btn {
      flex: 1;
      background: #3b9eff;
      border: none;
      border-radius: 40px;
      padding: 10px 0;
      font-weight: 600;
      color: white;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-actions .add-btn:hover { background: #2a8ae6; }
    .product-actions .wish-btn {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.06);
      border-radius: 40px;
      width: 44px;
      color: #b0c4db;
      cursor: pointer;
      transition: 0.2s;
    }
    .product-actions .wish-btn:hover { background: rgba(255,255,255,0.08); color: white; }

    /* ----- deal block (flash) ----- */
    .deal-block {
      display: flex;
      flex-wrap: wrap;
      background: radial-gradient(circle at 80% 20%, #18222e, #0b0e14);
      border-radius: 32px;
      border: 1px solid rgba(255,255,255,0.04);
      overflow: hidden;
      margin: 24px 0 8px;
      gap: 12px;
    }
    .deal-block .deal-img {
      flex: 1 1 260px;
      min-height: 240px;
      background: #10171f;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }
    .deal-block .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 24px;
    }
    .deal-content {
      flex: 2 1 340px;
      padding: 32px 28px;
    }
    .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
    }
    .timer-box {
      display: flex;
      gap: 14px;
      margin: 20px 0;
    }
    .time-unit {
      background: rgba(255,255,255,0.04);
      border-radius: 16px;
      padding: 8px 14px;
      text-align: center;
      min-width: 60px;
      border: 1px solid rgba(255,255,255,0.03);
    }
    .time-unit .num {
      font-weight: 700;
      font-size: 1.8rem;
      line-height: 1.2;
      color: white;
    }
    .time-unit .label { font-size: 0.7rem; color: #7a8aa0; }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 16px 0 8px;
    }
    .deal-price .current { font-size: 2rem; font-weight: 700; }
    .deal-price .old { color: #7a8aa0; text-decoration: line-through; font-size: 1.1rem; }
    .deal-discount { background: #f43f5e; padding: 4px 14px; border-radius: 40px; font-weight: 700; font-size: 0.9rem; }

    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 20px;
    }
    .testimonial-card {
      background: rgba(255,255,255,0.03);
      border-radius: 24px;
      padding: 24px;
      border: 1px solid rgba(255,255,255,0.04);
    }
    .testimonial-card .stars { color: #fbbf24; letter-spacing: 2px; }
    .testimonial-card p { margin: 12px 0 16px; color: #d0ddee; }
    .testimonial-card .user {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .user img {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      background: #1f2a36;
      object-fit: cover;
    }
    .testimonial-card .user .name { font-weight: 600; }
    .testimonial-card .user .role { font-size: 0.75rem; color: #7a8aa0; }

    /* newsletter */
    .newsletter-box {
      background: radial-gradient(circle at 20% 30%, #1f2a36, #0b0e14);
      border-radius: 32px;
      padding: 44px 32px;
      text-align: center;
      border: 1px solid rgba(255,255,255,0.04);
    }
    .newsletter-box h3 { font-family: 'Space Grotesk', sans-serif; font-size: 1.8rem; }
    .newsletter-box p { color: #b0c4db; margin-bottom: 18px; }
    .newsletter-box form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 10px;
    }
    .newsletter-box input {
      background: rgba(255,255,255,0.06);
      border: 1px solid rgba(255,255,255,0.06);
      border-radius: 60px;
      padding: 14px 24px;
      color: white;
      font-size: 1rem;
      min-width: 260px;
      outline: none;
    }
    .newsletter-box input:focus { border-color: #3b9eff; }
    .newsletter-box button { padding: 14px 36px; }

    /* footer */
    footer {
      margin-top: 40px;
      padding: 40px 0 24px;
      border-top: 1px solid rgba(255,255,255,0.04);
      color: #7a8aa0;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-grid .brand { font-size: 1.4rem; }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { display: flex; flex-direction: column; gap: 6px; }
    .footer-links div strong { color: #eef2f6; font-weight: 600; }
    .footer-links a { color: #7a8aa0; transition: 0.2s; }
    .footer-links a:hover { color: white; }
    .copy { text-align: center; margin-top: 28px; font-size: 0.85rem; }

    /* responsive */
    @media (max-width: 900px) {
      .nav-links, .search-wrap { display: none; }
      .mobile-toggle { display: block; }
      .hero { padding: 48px 24px; }
      .hero h1 { font-size: 2.4rem; }
    }
    @media (max-width: 600px) {
      .hero h1 { font-size: 1.8rem; }
      .deal-content { padding: 20px; }
      .deal-content h3 { font-size: 1.4rem; }
      .section-head { flex-direction: column; gap: 6px; }
    }
    .hidden { display: none; }
  </style>
</head>
<body>
<!-- HEADER -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-cube"></i><span>Nexus</span></a>
    </div>
    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-compass"></i> Explore</a></li>
      <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
      <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#"><i class="fas fa-tag"></i> New</a></li>
    </ul>
    <div class="search-wrap">
      <input type="search" id="searchInput" placeholder="Search products..." />
      <button id="searchBtn"><i class="fas fa-search"></i> Find</button>
    </div>
    <div class="header-actions">
      <button class="icon-btn"><i class="far fa-heart"></i></button>
      <button class="icon-btn"><i class="far fa-user"></i></button>
      <div class="cart-badge">
        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" class="hidden">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#"><i class="fas fa-tag"></i> New arrivals</a></li>
      </ul>
    </div>
  </div>
</header>

<main class="container">
  <!-- HERO -->
  <section class="hero">
    <h1>Dragon Movie Ticket <span class="gradient-text">Collections 1000cr</span></h1>
    <p>Premium picks, limited drops &amp; exclusive deals. Elevate your style with curated tech, fashion &amp; accessories.</p>
    <div class="btn-group">
      <button class="btn btn-primary" id="shopNow"><i class="fas fa-bolt"></i> Shop now</button>
      <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-gift"></i> Explore deals</button>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section>
    <div class="section-head"><h2>Categories</h2><span class="muted">curated for you</span></div>
    <div class="category-grid" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section style="margin-top: 44px;">
    <div class="section-head"><h2>Trending <span class="gradient-text">now</span></h2><span class="muted">popular picks</span></div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section id="deals" style="margin-top: 48px;">
    <div class="section-head"><h2><i class="fas fa-bolt" style="color:#3b9eff;"></i> Flash sale</h2><span class="muted">limited time</span></div>
    <div class="deal-block">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" />
      </div>
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p style="color:#b0c4db;">Ultra-slim, next-gen performance — now with M2 chip.</p>
        <div class="timer-box">
          <div class="time-unit"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
          <div class="time-unit"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
          <div class="time-unit"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
          <div class="time-unit"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="color:#b0c4db; margin: 6px 0 14px;">Only <strong style="color:white;">12</strong> left at this price</p>
        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section style="margin-top: 44px;">
    <div class="section-head"><h2>Trusted by <span class="gradient-text">thousands</span></h2><span class="muted">real reviews</span></div>
    <div class="testimonial-grid" id="testimonialGrid">
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p>“Fast shipping, premium quality. The M2 MacBook is a beast.”</p>
        <div class="user">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" />
          <div><div class="name">Ava Martin</div><div class="role">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★☆</div>
        <p>“Great selection, smooth checkout. Will definitely order again.”</p>
        <div class="user">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" />
          <div><div class="name">Michael Lee</div><div class="role">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p>“NexusShop is my go-to. The deals are unreal and support is top.”</p>
        <div class="user">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="James" />
          <div><div class="name">James Carter</div><div class="role">Tech enthusiast</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section style="margin-top: 48px;">
    <div class="newsletter-box">
      <h3>Stay ahead <span class="gradient-text">of the curve</span></h3>
      <p>Subscribe for exclusive drops, early access &amp; members-only deals.</p>
      <form id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px; font-size:0.9rem; display:none;"></div>
    </div>
  </section>
</main>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div><div class="brand"><i class="fas fa-cube"></i><span>Nexus</span></div><p style="max-width:240px; margin-top:8px;">Modern e‑commerce experience, crafted with passion.</p></div>
      <div class="footer-links">
        <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><strong>Support</strong><a href="#">Help center</a><a href="#">Shipping</a><a href="#">Contact</a></div>
        <div><strong>Legal</strong><a href="#">Privacy</a><a href="#">Terms</a></div>
      </div>
    </div>
    <div class="copy">© <span id="year"></span> NexusShop — all rights reserved.</div>
  </div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen-button' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'Phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, oldPrice:null, rating:4, reviews:86, badge:null, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'Laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-13%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:4, title:'Nike Air Max 270', price:150, oldPrice:null, rating:4, reviews:53, badge:null, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'Footwear' },
    { id:5, title:'Sony A7 IV', price:2499, oldPrice:null, rating:5, reviews:42, badge:'Pro', img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'Gadgets' },
    { id:6, title:'Chanel No.5', price:120, oldPrice:null, rating:5, reviews:189, badge:null, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, badge:'Sale', img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, oldPrice:null, rating:5, reviews:156, badge:null, img:'https://images.unsplash.com/photo-1600185365483-26
