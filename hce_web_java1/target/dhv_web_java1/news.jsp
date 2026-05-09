<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tin Tức - Cyber Game Arena</title>

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
            url('https://images.unsplash.com/photo-1556656793-08538906a9f8?q=80&w=1600') center/cover;
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

        .news-list{
            display:grid;
            grid-template-columns:1fr;
            gap:30px;
        }

        .news-item{
            background:#15152b;
            border-radius:20px;
            overflow:hidden;
            transition:0.4s;
            box-shadow:0 0 20px rgba(0,255,231,0.2);
            display:grid;
            grid-template-columns:300px 1fr;
        }

        .news-item:hover{
            box-shadow:0 0 25px #00ffe7;
        }

        .news-item img{
            width:100%;
            height:250px;
            object-fit:cover;
        }

        .news-content{
            padding:30px;
            display:flex;
            flex-direction:column;
            justify-content:space-between;
        }

        .news-content h3{
            color:#00ffe7;
            margin-bottom:15px;
            font-size:24px;
        }

        .news-content p{
            color:#ccc;
            line-height:1.6;
            margin-bottom:15px;
        }

        .news-meta{
            color:#888;
            font-size:12px;
            margin-bottom:15px;
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
            width:fit-content;
        }

        .btn:hover{
            background:#ff00cc;
            color:white;
            transform:scale(1.08);
        }

        @media(max-width:768px){
            .news-item{
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
    <h1>TIN TỨC GAME</h1>
</div>

<!-- NEWS LIST -->
<section>

    <h2 style="text-align:center;margin-bottom:50px;color:#00ffe7;">
        📰 CẬP NHẬT TIN TỨC MỚI NHẤT
    </h2>

    <div class="news-list">

        <div class="news-item">
            <img src="https://images.unsplash.com/photo-1538481143235-5d8c9b52e729?q=80&w=1200">
            <div class="news-content">
                <div>
                    <div class="news-meta">📅 09/05/2026 | 👤 By Admin</div>
                    <h3>PUBG Mobile ra bản cập nhật lớn tháng 5</h3>
                    <p>Phiên bản mới của PUBG Mobile đã được phát hành với nhiều bản đồ mới, vũ khí và chế độ chơi thú vị. Các nhà phát triển hứa sẽ cải thiện đồ họa và các tính năng gameplay.</p>
                </div>
                <a href="#" class="btn">Đọc Thêm</a>
            </div>
        </div>

        <div class="news-item">
            <img src="https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?q=80&w=1200">
            <div class="news-content">
                <div>
                    <div class="news-meta">📅 08/05/2026 | 👤 By GameMaster</div>
                    <h3>Need For Speed: Unbound - Review Chi Tiết</h3>
                    <p>Đánh giá sâu về phần mới của series Need For Speed. Game có đồ họa tuyệt vời, gameplay căng thẳng nhưng có một vài lỗi nhỏ cần được sửa chữa.</p>
                </div>
                <a href="#" class="btn">Đọc Thêm</a>
            </div>
        </div>

        <div class="news-item">
            <img src="https://images.unsplash.com/photo-1535223289827-42f1e9919769?q=80&w=1200">
            <div class="news-content">
                <div>
                    <div class="news-meta">📅 07/05/2026 | 👤 By RPGFan</div>
                    <h3>Top 10 Game RPG Hay Nhất 2026</h3>
                    <p>Danh sách các game RPG tốt nhất trong năm 2026 cập nhật đến nay. Từ các tựa game indie độc lập đến các blockbuster AAA, tất cả đều có trong danh sách này.</p>
                </div>
                <a href="#" class="btn">Đọc Thêm</a>
            </div>
        </div>

        <div class="news-item">
            <img src="https://images.unsplash.com/photo-1552820728-8ac41f1ce891?q=80&w=1200">
            <div class="news-content">
                <div>
                    <div class="news-meta">📅 06/05/2026 | 👤 By eSports</div>
                    <h3>Giải Đấu Esports Lớn Nhất Châu Á Sắp Diễn Ra</h3>
                    <p>Giải đấu esports lớn nhất châu Á sẽ diễn ra vào tháng 6 năm nay với tổng tiền thưởng lên đến 5 triệu USD. Các đội tuyển hàng đầu thế giới sẽ tham gia.</p>
                </div>
                <a href="#" class="btn">Đọc Thêm</a>
            </div>
        </div>

    </div>

</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>
