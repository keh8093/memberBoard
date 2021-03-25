<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">



//아이디 중복체크
function f_idck(){
	$.ajax({
		url:"idCk",
		type:"post",
		dateType:"json",
		data:{"memId":$("#memId").val()},
		success:function(data){
			if(data==1){
				alert("존재하는 아이디입니다.");
				$("#btn").attr("disabled","disabled"); //아이디 중복시 회원가입 버튼 비활성화
				return false;
			}else if(data==0){
				$("#idCk").attr("value","Y");
				alert("사용가능한 아이디입니다.");
				$("#btn").removeAttr("disabled"); //신규 아이디일 경우 회원가입 버튼 비활성화x
			}
		}
	})
}
//비밀번호 중복체크
function check_pwd(){
	var pwd= document.getElementById("memPassword").value;
	var ckpwd= document.getElementById("memCkpwd").value;
	var pwdmsg= document.getElementById("pwdmsg");
	//비밀번호 일치 확인
	if(pwd!='' && ckpwd!=''){
		if(pwd==ckpwd){
			pwdmsg.innerHTML="비밀번호가 일치합니다."
        	pwdmsg.style.color="green";
            }
		else{
        	alert("비밀번호가 일치하지 않습니다.");
        	$('#memCkpwd').focus();
        	return false;
        	}
		}
	}
	
//필수입력칸
$(document).ready(function(){
	
	$('.btn').on('click', function(){
		if($('#memName').val()==""){
			alert("이름은 반드시 입력해야합니다.");
			$('#memName').focus();
			return false;
		}
		if($('#memId').val()==""){
			alert("아이디는 반드시 입력해야합니다.");
			$('#memId').focus();
			return false;
		}
		if($('#memPassword').val()==""){
			alert("비밀번호는 반드시 입력해야합니다.");
			$('#memPassword').focus();
			return false;
		}
		if($('#memPassword').val() != $('#memCkpwd').val()){
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
                <a href=""><img src="./resources/img/form.png" alt="로고"></a>
            </div>
        </header>
    </div>
    <div id="insertUser">
        <h1>회원가입</h1>
        <form method="post" id="joinck" name="joinck" action="/joinck">
            <p>
                <label> 이름</label>
                <input type="text" id="memName" name="memName" placeholder="이름을 입력하세요" maxlength="10" />
            </p>
            <p>
                <label> 아이디</label>
                <input type="text" id="memId" name="memId" placeholder="아이디를 입력하세요" maxlength="15" />
                <button type="button" id="idCk" name="idCk" onclick="f_idck()" value="N">중복확인</button>
            </p>
            <p>
                <label> 비밀번호</label>
                <input type="password" id="memPassword" name="memPassword" placeholder="비밀번호를 입력하세요" maxlength="30" onclick="check_pwd()" />
            </p>
            <p>
                <label> 비밀번호 확인</label>
                <input type="password" id="memCkpwd" name="memCkpwd" placeholder="비밀번호를 입력하세요" maxlength="30" onclick="check_pwd()" /><br/>
                <span id="pwdmsg" style="font-size:9px; text-align:center;"></span><br/> <!-- 비밀번호일치체크 -->
            </p>
            <p class="btn">
                <button id="btn" type="submit" disabled="disabled" >회원가입</button> <!-- disabled: 아이디 중복확인 해야 가입버튼 활성화됨-->
            </p>
        </form>
    </div>
</body>

<link rel="stylesheet" href="./resources/css/join.css">

</html>