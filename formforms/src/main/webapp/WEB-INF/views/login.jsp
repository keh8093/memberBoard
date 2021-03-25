<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#login').click(function(){
		if($.trim($('#memId').val())==''){
			alert("아이디를 입력해주세요");
			$('#memId').focus();
			return false;
		}else if($.trim($('#memPassword').val())==''){
			alert("비밀번호를 입력해주세요");
			$('#memPassword').focus();
			return false;
		}
	})
	$("#join").on("click", function(){
	location.href = "join";
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

    <div id="loginbox">
        <h1>로그인</h1>
		<c:choose>
		<c:when test="${empty sessionScope.memId}">
        <form method="post" id="" name="frm" action="/loginCk">
            <p>
                <label for="" class=""> 아이디</label>
                <input type="text" id="memId" name="memId" placeholder="아이디를 입력하세요" maxlength="15"
                    value="${memId}" /><br />
            </p>
            <p>
                <label for="" class=""> 비밀번호</label>
                <input type="password" id="memPassword" name="memPassword" placeholder="비밀번호를 입력하세요" maxlength="30"
                    value="${memPassword}" /><br />
            </p>
            <c:if test="${msg=='fail'}"><span style="font-size:9px; text-align:center;">존재하지 않는 아이디 또는 비밀번호가 틀립니다.</span></c:if>
            <p class="btn">
                <button id="login" type="submit" value="로그인">로그인</button>
                <button id="join" type="button">회원가입</button>
            </p>
        </form>
        </c:when>
        </c:choose>	
    </div>

</body>
<link rel="stylesheet" href="./resources/css/login.css">
</html>