<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Virtual Blood Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body {
        font-family: 'Helvetica Neue', Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        margin: 0;
        padding: 0;
        line-height: 1.6;
        background-image: url('https://i.ibb.co/6wMbqD1/gettyimages-1312706504-612x612.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        
    }

    header {
        background-color: #8a1f1f;
        color: #fff;
        padding: 20px 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .header-top {
        display: flex;
        align-items: center;
        width: 100%;
        justify-content: space-between;
        flex-wrap: wrap;
        margin-bottom: 20px;
    }

    .logo {
        max-width: 80px;
    }

    .title-container {
        flex: 1;
        text-align: center;
    }

    h1 {
        margin: 0;
        font-size: 28px;
        font-weight: 700;
        letter-spacing: 1px;
    }

    nav {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        width: 100%;
    }

    nav a {
        color: #fff;
        text-decoration: none;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        background-color: #b33939;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #a72e2e;
    }

    .container {
        max-width: 1000px;
        margin: 40px auto;
        padding: 20px 30px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .content h2 {
        margin-top: 0;
        font-size: 24px;
        font-weight: 600;
        color: #8a1f1f;
        border-bottom: 2px solid #eee;
        padding-bottom: 10px;
    }

    .content p {
        margin: 15px 0;
    }

    @media (max-width: 768px) {
        .header-top {
            flex-direction: column;
            text-align: center;
        }

        .logo {
            margin-bottom: 10px;
        }

        nav a {
            margin: 5px 10px;
        }
    }
</style>
</head>
<body>
<header>
    <div class="header-top">
        <img src="https://i.ibb.co/fCP3HQV/2.png" alt="Blood Bank Logo" class="logo">
        <div class="title-container">
            <h1>Virtual Blood Bank</h1>
        </div>
    </div>
    <nav>
        <a href="/">Home</a>
        <a href="/login">Login</a>
        <a href="/register">Registration</a>
        <a href="/donate">Donate Blood</a>
        <a href="/receive">Receive Blood</a>
        <a href="/contact">Contact Us</a>
        <a href="/finduser">Update Profile</a>
    </nav>
</header>

<div class="container">
    <div class="content">
        <h2>Welcome to Our Blood Bank</h2>
        <p>
            Welcome to our virtual blood bank, where saving lives is our priority. We are dedicated to ensuring a steady supply of blood to meet the needs of patients in hospitals and medical facilities across our region. By connecting generous blood donors with those in urgent need, we strive to make a positive impact on the health and well-being of our community.
        </p>
        <p>
            At our blood bank, we encourage individuals to donate blood regularly, as it is a life-saving gift that can make a significant difference. Whether you are a potential donor, a healthcare professional, or someone seeking information on blood transfusions, we are here to provide support and facilitate the donation process.
        </p>
        <p>
            Explore our website to learn more about our mission, how to donate blood, the importance of blood types, and how we ensure the safety and efficiency of blood donations. Together, we can make a difference in the lives of those in need of blood transfusions.
        </p>
    </div>
</div>
</body>
</html>
