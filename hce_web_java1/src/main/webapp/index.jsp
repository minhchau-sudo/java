<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
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

<%
    List<Map<String, String>> members = (List<Map<String, String>>) application.getAttribute("members");
    if (members == null) {
        members = new ArrayList<Map<String, String>>();
        application.setAttribute("members", members);
    }

    String fullname = request.getParameter("fullname");
    String age = request.getParameter("age");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String message = null;

    if (fullname != null || age != null || email != null || phone != null) {
        fullname = fullname == null ? "" : fullname.trim();
        age = age == null ? "" : age.trim();
        email = email == null ? "" : email.trim();
        phone = phone == null ? "" : phone.trim();

        if (!fullname.isEmpty() && !age.isEmpty() && !email.isEmpty() && !phone.isEmpty()) {
            Map<String, String> member = new HashMap<String, String>();
            member.put("fullname", fullname);
            member.put("age", age);
            member.put("email", email);
            member.put("phone", phone);
            members.add(member);
            message = "Đăng ký thành viên thành công!";
        } else {
            message = "Vui lòng điền đầy đủ họ tên, tuổi, email và số điện thoại.";
        }
    }
%>

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

<!-- MEMBER REGISTRATION -->
<section class="form-section">
    <h1 style="text-align:center;margin-bottom:30px;color:#00ffe7;">Đăng Ký Thành Viên</h1>

    <form method="get" action="index.jsp">
        <div class="form-grid">
            <div>
                <label for="fullname">Họ và tên</label>
                <input type="text" id="fullname" name="fullname" value='<%= fullname != null ? fullname : "" %>' placeholder="Nhập họ tên của bạn">
            </div>
            <div>
                <label for="age">Tuổi</label>
                <input type="number" id="age" name="age" value='<%= age != null ? age : "" %>' placeholder="Nhập tuổi">
            </div>
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value='<%= email != null ? email : "" %>' placeholder="Nhập email">
            </div>
            <div>
                <label for="phone">Số điện thoại</label>
                <input type="tel" id="phone" name="phone" value='<%= phone != null ? phone : "" %>' placeholder="Nhập số điện thoại">
            </div>
        </div>

        <div class="submit-block">
            <button type="submit" class="btn">Đăng Ký</button>
        </div>
    </form>

    <% if (message != null) { %>
        <div class="message"><%= message %></div>
    <% } %>

    <% if (!members.isEmpty()) { %>
        <table class="member-table">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ Tên</th>
                    <th>Tuổi</th>
                    <th>Email</th>
                    <th>SDT</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < members.size(); i++) {
                    Map<String, String> member = members.get(i);
                %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= member.get("fullname") %></td>
                    <td><%= member.get("age") %></td>
                    <td><%= member.get("email") %></td>
                    <td><%= member.get("phone") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>
</section>

<footer>
    © 2026 Cyber Game Arena | JSP Gaming Website
</footer>

</body>
</html>