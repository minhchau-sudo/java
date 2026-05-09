<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Liên Hệ - Cyber Game Arena</title>

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
            url('https://images.unsplash.com/photo-1516534775068-bb57e39c1a29?q=80&w=1600') center/cover;
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

        .contact-container{
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:50px;
            max-width:1200px;
            margin:0 auto;
        }

        .contact-info h3{
            color:#00ffe7;
            margin-bottom:30px;
            font-size:24px;
        }

        .info-item{
            margin-bottom:30px;
        }

        .info-item h4{
            color:#00ffe7;
            margin-bottom:10px;
        }

        .info-item p{
            color:#ccc;
            line-height:1.8;
        }

        .form-group{
            margin-bottom:20px;
        }

        .form-group label{
            display:block;
            margin-bottom:8px;
            color:#00ffe7;
            font-weight:bold;
        }

        .form-group input,
        .form-group textarea{
            width:100%;
            padding:12px;
            background:#15152b;
            color:white;
            border:2px solid #00ffe7;
            border-radius:8px;
            font-family:Arial, sans-serif;
            transition:0.3s;
        }

        .form-group input:focus,
        .form-group textarea:focus{
            outline:none;
            box-shadow:0 0 15px #00ffe7;
        }

        .form-group textarea{
            resize:vertical;
            min-height:120px;
        }

        .submit-btn{
            width:100%;
            padding:15px;
            background:#00ffe7;
            color:black;
            border:none;
            border-radius:50px;
            font-weight:bold;
            font-size:16px;
            cursor:pointer;
            transition:0.3s;
        }

        .submit-btn:hover{
            background:#ff00cc;
            color:white;
            transform:scale(1.02);
        }

        @media(max-width:768px){
            .contact-container{
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

<!-- PAGE HEADER -->
<div class="page-header">
    <h1>LIÊN HỆ VỚI CHÚNG TÔI</h1>
</div>

<!-- CONTACT FORM -->
<section>

    <h2 style="text-align:center;margin-bottom:50px;color:#00ffe7;">
        📞 HÃY LIÊN HỆ VỚI CHÚNG TÔI
    </h2>

    <div class="contact-container">

        <div class="contact-info">
            <h3>Thông Tin Liên Hệ</h3>

            <div class="info-item">
                <h4>📍 Địa Chỉ</h4>
                <p>
                    Cyber Game Arena<br>
                    123 Đường Game Street<br>
                    TP. Hồ Chí Minh, Việt Nam
                </p>
            </div>

            <div class="info-item">
                <h4>📞 Điện Thoại</h4>
                <p>+84 (0) 123 456 789</p>
            </div>

            <div class="info-item">
                <h4>📧 Email</h4>
                <p>contact@cybergamearena.com</p>
            </div>

            <div class="info-item">
                <h4>🕐 Giờ Làm Việc</h4>
                <p>
                    Thứ 2 - Thứ 6: 9:00 - 18:00<br>
                    Thứ 7: 10:00 - 16:00<br>
                    Chủ Nhật: Đóng cửa
                </p>
            </div>

            <div class="info-item">
                <h4>🌐 Mạng Xã Hội</h4>
                <p>
                    Facebook | Twitter | Instagram | Discord
                </p>
            </div>
        </div>

        <div class="contact-form">
            <h3>Gửi Tin Nhắn Cho Chúng Tôi</h3>
            <form>
                <div class="form-group">
                    <label for="name">Họ và Tên *</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="phone">Số Điện Thoại</label>
                    <input type="tel" id="phone" name="phone">
                </div>

                <div class="form-group">
                    <label for="subject">Chủ Đề *</label>
                    <input type="text" id="subject" name="subject" required>
                </div>

                <div class="form-group">
                    <label for="message">Nội Dung Tin Nhắn *</label>
                    <textarea id="message" name="message" required></textarea>
                </div>

                <button type="submit" class="submit-btn">Gửi Tin Nhắn</button>
            </form>
        </div>

    </div>

</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>
