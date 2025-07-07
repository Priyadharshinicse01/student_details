<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('/pages/images/study.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: white;
            text-shadow: 2px 2px 4px #000;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 20px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #444;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .button-container {
            text-align: center;
            margin: 20px;
        }

        .btn {
            background-color: #2e8b57;
            color: white;
            border: none;
            padding: 12px 20px;
            margin: 10px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #1e5f3f;
        }
    </style>
</head>
<body>
<h2 style="text-align:center;">All Students</h2>

<table border="1" align="center" cellpadding="10">
    <tr style="background-color: lightgray;">
        <th>ID</th>
        <th>Name</th>
        <th>DOB</th>
        <th>Age</th>
        <th>Father Name</th>
        <th>Mother Name</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="stu" items="${students}">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.age}</td>
            <td>${stu.dob}</td>
            <td>${stu.fathername}</td>
            <td>${stu.mothername}</td>
        <td>
            <a href="/edit?id=${stu.id}"><button class="btn">Edit</button></a>
            <a href="/delete?id=${stu.id}" onclick="return confirm('Are you sure to delete?')"><button class="btn" style="background-color: red;">Delete</button></a>
        </td>
        </tr>
    </c:forEach>
</table>

<div class="button-container">
    <a href="/add"><button class="btn">Add Student</button></a>
    <a href="/home"><button class="btn">Logout</button></a>
</div>

</body>
</html>
