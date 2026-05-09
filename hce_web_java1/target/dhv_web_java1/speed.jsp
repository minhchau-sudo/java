<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Need For Speed - Cyber Game Arena</title>

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

        .game-header{
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

        .game-header h1{
            font-size:70px;
            color:#ff00cc;
            text-shadow:0 0 20px #ff00cc;
        }

        section{
            padding:100px 10%;
        }

        .game-detail{
            max-width:1200px;
            margin:0 auto;
        }

        .detail-container{
            display:grid;
            grid-template-columns:300px 1fr;
            gap:50px;
            margin-bottom:50px;
        }

        .game-cover{
            width:100%;
        }

        .game-cover img{
            width:100%;
            border-radius:20px;
            box-shadow:0 0 30px rgba(255,0,204,0.3);
        }

        .game-info h2{
            color:#ff00cc;
            margin-bottom:20px;
            font-size:32px;
        }

        .game-info p{
            color:#ccc;
            line-height:1.8;
            margin-bottom:20px;
            font-size:16px;
        }

        .specs{
            background:#15152b;
            padding:20px;
            border-radius:10px;
            margin-bottom:20px;
        }

        .spec-item{
            display:grid;
            grid-template-columns:150px 1fr;
            margin-bottom:15px;
            padding-bottom:15px;
            border-bottom:1px solid #ff00cc;
        }

        .spec-item:last-child{
            border-bottom:none;
        }

        .spec-label{
            color:#ff00cc;
            font-weight:bold;
        }

        .spec-value{
            color:#ccc;
        }

        .screenshots{
            margin-top:50px;
        }

        .screenshots h2{
            color:#ff00cc;
            margin-bottom:30px;
            font-size:28px;
        }

        .screenshot-grid{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
            gap:20px;
        }

        .screenshot-grid img{
            width:100%;
            border-radius:10px;
            box-shadow:0 0 20px rgba(255,0,204,0.2);
            transition:0.3s;
        }

        .screenshot-grid img:hover{
            transform:scale(1.05);
            box-shadow:0 0 25px #ff00cc;
        }

        .btn{
            padding:15px 40px;
            background:#ff00cc;
            color:white;
            text-decoration:none;
            border-radius:50px;
            font-weight:bold;
            transition:0.3s;
            display:inline-block;
        }

        .btn:hover{
            background:#00ffe7;
            color:black;
            transform:scale(1.08);
        }

        @media(max-width:768px){
            .detail-container{
                grid-template-columns:1fr;
            }
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

<!-- GAME HEADER -->
<div class="game-header">
    <h1>NEED FOR SPEED</h1>
</div>

<!-- GAME DETAIL -->
<section>

    <div class="game-detail">

        <div class="detail-container">

            <div class="game-cover">
                <img src="https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=1200">
            </div>

            <div class="game-info">
                <h2>Need For Speed - Đua Xe Tốc Độ</h2>

                <p>
                    Need For Speed: Unbound là phiên bản mới nhất của series đua xe nổi tiếng. 
                    Trò chơi mang đến trải nghiệm đua xe đỉnh cao với đồ họa hiện đại và gameplay kịch tính.
                </p>

                <p>
                    Tham gia các cuộc đua hứa hẹn trên đường phố thành phố, tùy chỉnh xe của bạn, 
                    và chứng minh rằng bạn là tay đua tốt nhất. Chọn từ hàng răng xe thể thao, siêu xe, 
                    hay xe cổ điển và chinh phục mọi cuộc đua.
                </p>

                <div class="specs">
                    <div class="spec-item">
                        <div class="spec-label">Nhà Phát Triển:</div>
                        <div class="spec-value">Criterion Games</div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Nền Tảng:</div>
                        <div class="spec-value">PC, PS5, Xbox Series X|S</div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Thể Loại:</div>
                        <div class="spec-value">Đua Xe, Hành Động</div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Giá Tiền:</div>
                        <div class="spec-value">$69.99</div>
                    </div>
                    <div class="spec-item">
                        <div class="spec-label">Đánh Giá:</div>
                        <div class="spec-value">⭐⭐⭐⭐ (4/5)</div>
                    </div>
                </div>

                <a href="#" class="btn">Mua Ngay</a>
            </div>

        </div>

        <div class="screenshots">
            <h2>Ảnh Chụp Màn Hình</h2>
            <div class="screenshot-grid">
                <img src="https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=800">
                <img src="https://images.unsplash.com/photo-1552820728-8ac41f1ce891?q=80&w=800">
                <img src="https://images.unsplash.com/photo-1606661905195-cb42d41899d2?q=80&w=800">
            </div>
        </div>

    </div>

</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>
