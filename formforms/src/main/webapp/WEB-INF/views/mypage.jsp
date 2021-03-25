<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

//기존 비밀번호 일치여부 확인



//비밀번호 입력 확인
$(document).ready(function(){
	
	$('.btn>#save').on('click', function(){
		if($('#memPassword').val()==""){
			alert("현재 비밀번호는 반드시 입력해야합니다.");
			$('#memPassword').focus();
			return false;
		}
		if($('#newmempwd').val()==""){
			alert("새로운 비밀번호는 반드시 입력해야합니다.");
			$('newmempwd').focus();
			return false;
		}
		if($('#memPassword').val() == $('#newmempwd').val()){
			alert("새로운 비밀번호는 현재 비밀번호와 다르게 입력해주세요");
			$('#newmempwd').focus();
			return false;
		}
		if($('#newmempwd').val() != $('#memCkpwd').val()){
			alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요");
			$('#memCkpwd').focus();
			return false;
		}
	});
});
</script>
</head>
<body>
 <div id="headerWrap">
        <header>
            <div id="logobox">
                <a href="index"><img src="./resources/img/form.png" alt="로고"></a>
            </div>
        </header>
    </div>

    <div id="myPage">
        <h1>마이페이지</h1>
        <h3>회원정보 수정</h3>
        <form action="/mypageup" method="POST" name="" id="">
            <p>
                <label for="userId">아이디</label>
                <p id="userId">${id}</p> <br />
                
            <p>
                <label for="userPwd">현재 비밀번호</label>
                <input type="password" id="memPassword" placeholder="현재 비밀번호를 입력하세요" maxlength="30" />
            </p>
            <p>
                <label for="userPwd">새 비밀번호</label>
                <input type="password" id="newmempwd" name="memPassword" placeholder="새 비밀번호를 입력하세요" maxlength="30" />
            </p>
            <p>
                <label for="userPwd">비밀번호 확인</label>
                <input type="password" id="memCkpwd" name="" placeholder="새 비밀번호를 입력하세요" maxlength="30" />
            </p>
            <p class="btn">
                <button id="save" type="submit">수정하기</button>
                <button id="delete" type="button"><a href="deleteMemberView.do">회원탈퇴</a></button>      
            </p>
        </form>

    </div>
</body>

<link rel="stylesheet" href="./resources/css/mypage.css">
</html>