<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details Form</title>
    <style>
    body {
        margin: 0;
        font-family:'Courier New', Courier;
        background-image: url('/pages/images/studi.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        color: white;
    }

    .navbar {
        background-color: rgba(0, 0, 0, 0.7);
        overflow: hidden;
        padding: 10px 20px;
    }

    .navbar a {
        float: left;
        color: #fff;
        text-align: center;
        padding: 12px 16px;
        text-decoration: none;
        font-size: 15px;
    }

    .navbar .right a {
        float: none;
        display: inline-block;
    }

    .navbar .right {
        float: right;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .header-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 60px); 
        text-align: center;
        background-color: rgba(53, 47, 47, 0.4); 
    }

    .header-container h1 {
        font-size: 150px;
        margin: 10px 0;
        color: #e5e9e8;
        text-shadow: 5px 10px 7px rgba(56, 53, 53, 0.7);
    }
    
    input[type="button"] {
            background-color:  #2e8b57;
            color: white;
            padding:10px;
            cursor: pointer;
            margin-top: 1px;
        }

    input[type="button"]:hover {
            background-color:  #1e5f3f;
        }
</style>
</head>
<body>
<div class="navbar">
    <a href="/home">Home</a>
    <a href="/about">About</a>
    <a href="/contact">Contact</a>

    <div class="right">
        <a href="/login">Login</a>
    </div>
</div>

<div class="header-container">
    <h1>STUDENT</h1>
    <h1>INFORMATION</h1>
    
    <input type="button" value="View Details" onclick="window.location.href='/view'">
    
</div>
</body>
</html>