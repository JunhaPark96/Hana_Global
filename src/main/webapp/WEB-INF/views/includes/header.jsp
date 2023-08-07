<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Hana2.0+B&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Hana2.0+H&display=swap" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- 추가한 부분 -->
    <link href="./css/nav.css" rel="stylesheet" />
    <!-- 추가한 부분 끝 -->
</head>
<body>

<div class="header">
    <div class="logo">
        <a href="index.html">
            <img src="./images/hana_logo.png" class="hana_logo" alt="하나로고">
        </a>
    </div>
    <div class="login-box">
        <div class="signup">SignOut</div>
    </div>
    <div class="language">
        <select id="language-select">
            <option value="en">English</option>
            <option value="ko">Korean</option>
            <!-- 기타 필요한 언어를 여기에 추가 -->
        </select>
    </div>
</div>
</body>
</html>