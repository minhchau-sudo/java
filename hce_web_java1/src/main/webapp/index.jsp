<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cyber Game Arena</title>

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

        header{
            height:100vh;
            background:
            linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.8)),
            url('https://images.unsplash.com/photo-1542751110-97427bbecf20?q=80&w=1600') center/cover;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            text-align:center;
            padding:20px;
        }

        header h1{
            font-size:70px;
            color:#00ffe7;
            text-shadow:0 0 20px #00ffe7;
        }

        header p{
            margin-top:20px;
            font-size:22px;
            color:#ddd;
            width:70%;
        }

        .btn{
            margin-top:30px;
            padding:15px 40px;
            background:#00ffe7;
            color:black;
            text-decoration:none;
            border-radius:50px;
            font-weight:bold;
            transition:0.3s;
        }

        .btn:hover{
            background:#ff00cc;
            color:white;
            transform:scale(1.08);
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

<!-- HOME -->
<header>
    <h1>CYBER GAME ARENA</h1>

    <p>
        Website game điện tử cực đẹp với hiệu ứng neon hiện đại,
        giao diện gaming chuyên nghiệp và liên kết nhiều trang.
    </p>

    <a href="games.jsp" class="btn">Khám Phá Ngay</a>
</header>

<!-- GAME LIST -->
<section>

    <h1 style="text-align:center;margin-bottom:50px;color:#00ffe7;">
        TOP GAME HOT
    </h1>

    <div class="games">

        <div class="card">
            <img src="https://images.unsplash.com/photo-1511512578047-dfb367046420?q=80&w=1200">

            <div class="card-content">
                <h3>PUBG Mobile</h3>
                <p>Game sinh tồn hấp dẫn với đồ họa cực đẹp.</p>

                <br>
                <a href="pubg.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=1200">

            <div class="card-content">
                <h3>Need For Speed</h3>
                <p>Đua xe tốc độ cao với hiệu ứng ánh sáng neon.</p>

                <br>
                <a href="speed.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

        <div class="card">
            <img src="https://images.unsplash.com/photo-1535223289827-42f1e9919769?q=80&w=1200">

            <div class="card-content">
                <h3>Fantasy RPG</h3>
                <p>Khám phá thế giới phép thuật huyền bí.</p>

                <br>
                <a href="rpg.jsp" class="btn">Xem Chi Tiết</a>
            </div>
        </div>

    </div>

</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>