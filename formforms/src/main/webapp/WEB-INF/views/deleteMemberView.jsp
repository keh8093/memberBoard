<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	   //아이디, 비밀번호 칸 입력
	   $("#delete").on("click", function(){
	      if($("#memId").val()==""){
	         alert("아이디를 입력해주세요.");
	         $("#memId").focus();
	         return false;
	      }else if($("#memPassword").val()==""){
	         alert("비밀번호를 입력해주세요.");
	         $("#memPassword").focus();
	         return false;
	      }
	   //비밀번호 확인
	   $.ajax({
	      url:"pwdCk",
	      type:"POST",
	      dateType:"json",
	      data: $("#frm").serializeArray(),
	      success:function(data){
	         if(data==0){
	            alert("비밀번호가 틀립니다.");
	            return;
	         }else{
	            if(confirm("회원탈퇴를 하시겠습니까?")){
	               $("#frm").submit();
	               }
	            }
	         }
	      });
	   });  
	 //뒤로가기 버튼(mypage로 이동)
		$("#backbtn").on("click", function(){
			location.href = "mypage";
			});
	});
</script>
<body>
 <div id="headerWrap">
        <header>
            <div id="logobox">
                <a href=""><img src="./resources/img/form.png" alt="로고"></a>
            </div>
        </header>
    </div>

    <div id="loginbox">
        <h1>회원탈퇴</h1>
        <form method="post" id="frm" name="frm" action="/deleteMember">
            <p>              
                <label for="userId">아이디</label>
                <input type="text" id="memId" name="memId" placeholder="아이디를 입력하세요" maxlength="30"
                    value="${memId}" /><br />
            </p>
             <c:if test="${msg=='fail'}">
           	<span style="font-size:9px; text-align:center;">입력한 비밀번호가 잘 못 되었습니다.</span>
			</c:if>
            <p>
                <label for="" class=""> 비밀번호</label>
                <input type="password" id="memPassword" name="memPassword" placeholder="비밀번호를 입력하세요" maxlength="30"
                    value="${memPassword}" /><br />
            </p>
            <p class="btn">
                <button id="backbtn" type="button">뒤로가기</button>
                <button id="delete" type="button">회원탈퇴</button>            
            </p>
        </form>
    </div>

</body>
<link rel="stylesheet" href="./resources/css/delete.css">
</html>