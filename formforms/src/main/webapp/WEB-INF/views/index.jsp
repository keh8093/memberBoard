<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/logout.js"></script>
</head>
<body>
<div id="headerWrap">	
        <header>
            <div id="logobox">
                <a href="index"><img src="./resources/img/form.png" alt="로고"></a>
            </div>
            <div id="login">
                <a href="mypage">
                    <p><u>${id}</u></p>
                </a>
                <button type="button" id="logout">로그아웃</button>
            </div>
        </header>
    </div>

    <div id="main">
        <div class="circle1">
            <a href="made">만들기</a>
        </div>
        <div class="circle2">
            <a href="answer">응답보기</a>
        </div>


    </div>
</body>
<link rel="stylesheet" href="./resources/css/index.css">
</html>