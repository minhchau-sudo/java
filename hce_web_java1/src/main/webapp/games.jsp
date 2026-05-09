<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Games - Cyber Game Arena</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial, sans-serif;
        }

        body{
            background:#0b0b1f;
            color:white;
        }

        nav{
            width:100%;
            padding:20px 8%;
            background:#111;
            display:flex;
            justify-content:space-between;
            align-items:center;
            position:fixed;
            top:0;
            z-index:1000;
        }

        nav h2{
            color:#00ffe7;
        }

        nav ul{
            display:flex;
            list-style:none;
        }

        nav ul li{
            margin-left:25px;
        }

        nav ul li a{
            color:white;
            text-decoration:none;
            transition:0.3s;
        }

        nav ul li a:hover{
            color:#00ffe7;
        }

        .page-header{
            height:50vh;
            background:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.8)),
            url('https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=1600') center/cover;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            text-align:center;
            margin-top:80px;
        }

        .page-header h1{
            font-size:70px;
            color:#00ffe7;
            text-shadow:0 0 20px #00ffe7;
        }

        section{
            padding:100px 10%;
        }

        .games{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
            gap:30px;
        }

        .card{
            background:#15152b;
            border-radius:20px;
            overflow:hidden;
            transition:0.4s;
            box-shadow:0 0 20px rgba(0,255,231,0.2);
        }

        .card:hover{
            transform:translateY(-10px);
            box-shadow:0 0 25px #00ffe7;
        }

        .card img{
            width:100%;
            height:220px;
            object-fit:cover;
        }

        .card-content{
            padding:20px;
        }

        .card-content h3{
            color:#00ffe7;
            margin-bottom:10px;
        }

        .card-content p{
            font-size:14px;
            margin-bottom:15px;
            color:#ccc;
        }

        .btn{
            padding:12px 30px;
            background:#00ffe7;
            color:black;
            text-decoration:none;
            border-radius:50px;
            font-weight:bold;
            transition:0.3s;
            display:inline-block;
        }

        .btn:hover{
            background:#ff00cc;
            color:white;
            transform:scale(1.08);
        }

        footer{
            background:#111;
            text-align:center;
            padding:20px;
            color:#888;
        }
    </style>
</head>

<body>

<!-- MENU -->
<nav>
    <h2>CYBER GAME</h2>

    <ul>
        <li><a href="index.jsp">Trang Chủ</a></li>
        <li><a href="games.jsp">Games</a></li>
        <li><a href="news.jsp">Tin Tức</a></li>
        <li><a href="contact.jsp">Liên Hệ</a></li>
    </ul>
</nav>

<!-- PAGE HEADER -->
<div class="page-header">
    <h1>KHO GAMES</h1>
</div>

<!-- GAMES LIST -->
<section>

    <h2 style="text-align:center;margin-bottom:50px;color:#00ffe7;">
        🎮 TẤT CẢ GAME PHỔ BIẾN
    </h2>

    <div class="games">

        <div class="card">
            <img src="https://images.unsplash.com/photo-1511512578047-dfb367046420?q=80&w=1200">
            <div class="card-content">
                <h3>PUBG Mobile</h3>
                <p>Game sinh tồn hấp dẫn với đồ họa cực đẹp và gameplay căng thẳng.</p>
                <a href="pubg.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=1200">
            <div class="card-content">
                <h3>Need For Speed</h3>
                <p>Đua xe tốc độ cao với hiệu ứng ánh sáng neon tuyệt đẹp.</p>
                <a href="speed.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1535223289827-42f1e9919769?q=80&w=1200">
            <div class="card-content">
                <h3>Fantasy RPG</h3>
                <p>Khám phá thế giới phép thuật huyền bí với câu chuyện hấp dẫn.</p>
                <a href="rpg.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1552820728-8ac41f1ce891?q=80&w=1200">
            <div class="card-content">
                <h3>Counter-Strike 2</h3>
                <p>Game bắn súng chiến thuật với cơ chế gameplay cân bằng tuyệt vời.</p>
                <a href="#" class="btn">Sắp Ra Mắt</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1606661905195-cb42d41899d2?q=80&w=1200">
            <div class="card-content">
                <h3>Valorant</h3>
                <p>Game bắn súng chiến thuật 5v5 với các Agent độc đáo và kỹ năng đặc biệt.</p>
                <a href="valorant.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1552820728-8ac41f1ce891?q=80&w=1200">
            <div class="card-content">
                <h3>Counter-Strike 2</h3>
                <p>Game bắn súng chiến thuật với cơ chế gameplay cân bằng tuyệt vời.</p>
                <a href="cs2.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1538481143235-5d8c9b52e729?q=80&w=1200">
            <div class="card-content">
                <h3>Elden Ring</h3>
                <p>Game hành động giả tưởng với thế giới mở rộng lớn và boss khó.</p>
                <a href="elden.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1506157786151-b8491531f063?q=80&w=1200">
            <div class="card-content">
                <h3>Dragon Age: The Veilguard</h3>
                <p>RPG hành động với câu chuyện épic và nhân vật đa dạng.</p>
                <a href="dragonage.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1511046566174-3a5d4e9d04d0?q=80&w=1200">
            <div class="card-content">
                <h3>Helldivers 2</h3>
                <p>Game hợp tác sci-fi nơi bạn chống lại các loài ngoài hành tinh.</p>
                <a href="helldivers.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1492684223066-81342ee5ff30?q=80&w=1200">
            <div class="card-content">
                <h3>Palworld</h3>
                <p>Game sinh tồn Pokémon-like với gameplay độc đáo và hợp tác đa người chơi.</p>
                <a href="palworld.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

    </div>

</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>
