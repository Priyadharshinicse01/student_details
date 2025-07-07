<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Student Portal</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('/pages/images/imag.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        margin: 0;
    }

    .login-container {
        max-width: 400px;
        margin: 100px auto;
        background-color: rgba(255,255,255,0.9);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0,0,0,0.5);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        display: block;
        font-weight: bold;
        margin-top: 10px;
    }

    input[type="text"], input[type="mail"], input[type="password"], input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 15px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <form action="/submitlogin" method="post">
        <label for="username">UserName</label>
        <input type="text" id="username" name="username" placeholder="Username" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Password" required>

        <input type="submit" value="Login">
        
        <span style="color:red;">${error}</span>
        
    </form>
</div>

</body>
</html>
