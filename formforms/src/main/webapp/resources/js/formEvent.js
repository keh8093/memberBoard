
var targetArray = new Array();
var targetArrayAttr = new Array();
  
selectForm = function(value){


if( targetArray.indexOf(value) == -1 ){

value.setAttribute("class","selectForm on");
targetArray.push(value);
targetArrayAttr.push(value.parentNode.parentNode);

console.log(targetArray)
console.log(targetArrayAttr)

return false;
 
}

targetArray.splice( targetArray.indexOf(value), 1 );
targetArrayAttr.splice( targetArrayAttr.indexOf(value.parentNode.parentNode) ,1);
value.setAttribute("class","selectForm");
       
}
    
pageUp = function(){ window.scrollTo({top:0, left:0, behavior:'smooth'}); }

pageDown = function(){ window.scrollTo({top: document.body.scrollHeight, left:0, behavior:'smooth'}); }

deleteForm = function(){
var formCount = document.getElementsByClassName("subForm").length;
var length = targetArray.length;
if( length == 0 ){ return alert(" 최소 1개를 선택하여 삭제하실 수 있습니다! "); } 
if( (formCount - length) < 2 ){ for( var i = 0; i < length ; i++  ){ targetArray[i].setAttribute("class","selectForm") } targetArray = new Array(); targetArrayAttr = new Array(); return alert("설문 유형은 최소 두개가 필요합니다!") }
else{ for( var i = 0; i < length ; i++ ){ targetArrayAttr[i].remove(); } targetArray = new Array(); targetArrayAttr = new Array(); }
};

insertForm = function(){
var formCount = document.getElementsByClassName("subForm").length;
if(formCount == 8){ return alert("설문 유형은 최대 8개까지 만들 수 있습니다!") }
var target = document.createElement("div");
target.setAttribute("class","subForm");
target.innerHTML = 
"<p><span class='selectForm' onclick='selectForm(this)'>✓</span><input type='checkbox' class='itemNeed'><span>필수 항목</span></p>" +
"<p><span>제목</span><input type='text' class='inputSubject'></p>"+
"<p><span>설명</span><textarea cols='40' rows='10' class='inputContent' maxlength='200'></textarea></p>"+
"<p>"+
"<span>유형</span>"+
"<select class='inputType' onchange='itemTypeEvent(this)'>"+
"<option value='1'>주관식 단답형</option>"+
"<option value='2'>주관식 서술형</option>"+
"<option value='3'>단일 선택형</option>"+
"<option value='4'>복수 선택형</option>"+
"</select>"+
"</p>"+
"<p style='display:none;'><input type='text' value='null' class='item'>&nbsp;<input type='text' value='null' class='item'>&nbsp;</p>"+
"<p><span>답변</span><span><input cols='40' rows='10' maxlength='21' class='itemReply-1'></input></span></p>"+
"<span class='alert'></span>"+
"<div class='line'>"+
"</div>"
document.querySelector("div#form").append(target);
};
