<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>설문조사 작성</title>
</head>
<link rel="stylesheet" type="text/css" href="./resources/css/insertForm.css" />


<script src="./resources/js/formEvent.js"></script>
<script src="./resources/js/itemEvent.js"></script>
<script src="./resources/js/submitEvent.js"></script>
<script>

window.onload = function(){




var date = new Date();
var year = date.getFullYear();

var month = date.getMonth() + 1;
if(month < 10){
    month = "0" + month;
}
var day = date.getDate();
if(day < 10){
    day = "0" + day;
}

var today = year + "-" + month + "-" + day;
document.querySelector("input.today").value = today;

var day = date.getDate() + 1;
if(day < 10){
    day = "0" + day;
}

var today = year + "-" + month + "-" + day;
document.querySelector(".inputDate").value = today;
document.querySelector(".inputDate").setAttribute("min",today);


}
</script>
<body>
<div id="form">
   <div id="special"><span id="pageUp" onclick="pageUp()">▲</span><span id="insertForm" onclick="insertForm()">추가</span><span id="deleteForm" onclick="deleteForm()">삭제</span><span id="pageDown" onclick="pageDown()">▼</span></div>
    <div id="mainForm"><p><span>제목</span><input type="text" class="inputSubject"></p><p><span>설명</span><textarea cols="40" rows="10" form="form" class="inputContent" maxlength="200"></textarea></p><p><span>응답기간</span><input type="text" style="display: inline-block;" class="today" readonly="readonly" disabled><span>부터</span><input type="date" style="display: inline-block;" class="inputDate"  max="2050-12-31" ><span>까지</span><input type="checkbox" id="notCheck" onchange="notCheck(this)"><span>시간설정 없음</span></p><span class='alert'></span><div class="line"></div></div>
   <div class="subForm"><p><span class="selectForm" onclick="selectForm(this)">✓</span><input type="checkbox" class="itemNeed"><span>필수 항목</span></p><p><span>제목</span><input type="text" class="inputSubject"></p><p><span>설명</span><textarea cols="40" rows="10" class="inputContent" maxlength="200"></textarea></p><p><span>유형</span><select class="inputType" onchange="itemTypeEvent(this)"><option value="1">주관식 단답형</option><option value="2">주관식 서술형</option><option value="3">단일 선택형</option><option value="4">복수 선택형</option></select></p><p style="display:none;"><input type="text" value="null" class="item">&nbsp;<input type="text" value="null" class="item">&nbsp;</p><p><span>답변</span><span class="itemReply-1"><input type="text" cols="40" rows="10" maxlength="21" class="itemReply-1"></span></p><span class='alert'></span><div class="line"></div></div>
   <div class="subForm"><p><span class="selectForm" onclick="selectForm(this)">✓</span><input type="checkbox" class="itemNeed"><span>필수 항목</span></p><p><span>제목</span><input type="text" class="inputSubject"></p><p><span>설명</span><textarea cols="40" rows="10" class="inputContent" maxlength="200"></textarea></p><p><span>유형</span><select class="inputType" onchange="itemTypeEvent(this)"><option value="1">주관식 단답형</option><option value="2">주관식 서술형</option><option value="3">단일 선택형</option><option value="4">복수 선택형</option></select></p><p style="display:none;"><input type="text" value="null" class="item">&nbsp;<input type="text" value="null" class="item">&nbsp;</p><p><span>답변</span><span class="itemReply-1"><input type="text" cols="40" rows="10" maxlength="21" class="itemReply-1"></span></p><span class='alert'></span><div class="line"></div></div>
</div>
<div id="submit"><span onclick="submitEvent(1)">저장하기</span><span onclick="submitEvent(2)">작성하기</span></div>
<form action="#" method="POST" style="display: none;">

    formsubject : <input type="text" name="formSubject">;
    formContent : <input type="text" name="formContent">;
    formState : <input type="text" name="formState">;
    formDate : <input type="text" name="formDate">;
    itemNeed : <input type="text" name="itemNeed">;
    itemSubject : <input type="text" name="itemSubject">;
    itemContent : <input type="text" name="itemContent">;
    itemType : <input type="text" name="itemType">;
    itemMin : <input type="text" name="itemMin">;
    itemMax : <input type="text" name="itemMax">;
    itemReply : <input type="text" name="itemReply">;

    <input type="submit" value="전송">

</form>
</body>






</html>

