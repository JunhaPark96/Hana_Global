<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="main-container">
    <div class="header">
        <div class="logo">
            <a href="index.html">
                <img src="./images/hana_logo.png" class="hana_logo" alt="하나로고">
            </a>
        </div>
        <div class="login-box">
            <div class="signin">Signin</div>
            <div class="signup">Signup</div>
        </div>
        <div class="language">
            <select id="language-select">
                <option value="en">English</option>
                <option value="ko">Korean</option>
                <!-- 기타 필요한 언어를 여기에 추가 -->
            </select>
        </div>
    </div>

    <div class="main-area">
        <div class="main-left">
            <div class="card card1">
                <a href="account.html">
                    <div class="card-image card-image1" alt="계좌"></div>
                    <div class="card-text">
                        Account
                    </div>
                </a>
            </div>
            <div class="card card2">
                <a href="exchange.html">
                    <div class="card-image card-image2" alt="환전"></div>
                    <div class="card-text">
                        Exchange
                    </div>
                </a>
            </div>
            <div class="card card3">
                <a href="pay.html">
                    <div class="card-image card-image3" alt="페이"></div>
                    <div class="card-text">
                        기능3
                    </div>
                </a>
            </div>
            <div class="card card4">
                <a href="transfer.html">
                    <div class="card-image card-image4" alt="송금"></div>
                    <div class="card-text">
                        Transfer
                    </div>
                </a>
            </div>
        </div>

        <div class="main-right">
            <div class="main-info">
                <div class="main-image"></div>
                <div class="main-text">
                    <h3>All-In-One Banking System</h3> <br>
                    simpler<br>
                    easier<br>
                    faster
                </div>
            </div>
            <div class="user-info">
                <div class="loginHeader">ID Log in</div>
                <div class="loginInput">
                    <div class="loginField loginId">
                        <label for="userId" class="login">ID</label>
                        <input type="text" name="userId" id="userId" maxlength="15">
                    </div>
                    <div class="loginField loginPw">
                        <label for="userPw" class="login">Passwd</label>
                        <input type="password" name="password" id="userPw" maxlength="16">
                    </div>
                    <div class="loginButton">
                        <a href="index.html" class="loginBtn">Log In</a>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <footer>
    </footer>
</div>

<script>
    $(function(){
        $("#header").load("header.html");
        $(".navbar").load("./includes/navbar.html");
    });
</script>
</body>

</html>