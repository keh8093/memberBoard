





itemTypeEvent = function(thisId){

        ObjectMaker = function(type){

            switch (type) {
        
                case "1":
        
                    var caseDelete = document.createElement("p");
                    caseDelete.innerHTML = 
                    "<input type='text' value='null' class='item'>&nbsp;" +
                    "<input type='text' value='null' class='item'>&nbsp;";
        
                    var case1 = document.createElement("span");
                    case1.setAttribute("class","itemReply-1")
                    case1.innerHTML = "<input type='text' maxlength='21' class='itemReply-1'>"
                
                    return [case1,caseDelete];
        
                case "2":
        
                    var caseDelete = document.createElement("p");
                    caseDelete.innerHTML = 
                    "<input type='text' value='null' class='item'>&nbsp;" +
                    "<input type='text' value='null' class='item'>&nbsp;";
        
                    var case2 = document.createElement("span");
                    case2.setAttribute("class","itemReply-2")
                    case2.innerHTML = "<textarea class='itemReply-2' cols='40' rows='10' maxlength='200'></textarea>";
        
              
                    return [case2,caseDelete];
        
                 case "3":
                
                    var caseDelete = document.createElement("p");
                    caseDelete.innerHTML = 
                    "<input type='text' value='null' class='item'>&nbsp;" +
                    "<input type='text' value='null' class='item'>&nbsp;";
        
                    var case3 = document.createElement("span")
                    case3.setAttribute( 'class', 'itemReply-3' );
        
                    case3.innerHTML = 
        
                    "<input type='checkbox' disabled='disable' checked style='width: 18px; height: 18px; margin-right: 26px;'>" + 
                    "<input type='text' maxlength='30' class='itemReply-3' placeholder='내용을 입력해주세요'><br/>" +
                    "<input type='checkbox' disabled='disable' checked style='width: 18px; height: 18px; margin-right: 26px;'>" +
                    "<input type='text' maxlength='30' class='itemReply-3' placeholder='내용을 입력해주세요'><br/>" +
                    "<span class='selectPlusBtn' onclick='choiceEvent(this,"+0+")'>추가하기</span>" +
                    "<span class='selectDeleteBtn' onclick='choiceEvent(this,"+1+")'>삭제하기</span>";
        
                    return [case3,caseDelete];
                
                case "4" : 
        
                   var case4 = document.createElement("p");
                   case4.innerHTML = 
                    
                    "<span>답변 선택 수</span> " +
                    "<span>최소</span><input type='number' min='2' max='6' class='item' value='2' onchange='itemMinChange(this,this.nextSibling.nextSibling)'>" +
                    "<span>최대</span><input type='number' min='2' max='6' class='item' value='2' onchange='itemMaxChange(this,this.previousSibling.previousSibling)'>" ;
        
                    var case5 = document.createElement("span")
                    case5.setAttribute( 'class', 'itemReply-4' );
        
                    case5.innerHTML = 
                    
                    "<input type='checkbox' disabled='disable' checked style='width: 18px; height: 18px; margin-right: 26px;'>" + 
                    "<input type='text' maxlength='30' class='itemReply-4' placeholder='내용을 입력해주세요'><br/>" +
                    "<input type='checkbox' disabled='disable' checked style='width: 18px; height: 18px; margin-right: 26px;'>" +
                    "<input type='text' maxlength='30' class='itemReply-4' placeholder='내용을 입력해주세요'><br/>" +
                    "<span class='selectPlusBtn' onclick='choiceEvent(this,"+0+")'>추가하기</span>" +
                    "<span class='selectDeleteBtn' onclick='choiceEvent(this,"+1+")'>삭제하기</span>"
        
                   return [case4,case5];
        
                 
                
            }
        
        
        }


        var address = thisId[0].id;
        var type = thisId.value;
        var target1 = (thisId.parentNode.parentNode).querySelector("p:last-of-type>span");
        var target2 = (thisId.parentNode.parentNode).querySelector("p:nth-of-type(5)");
        var alert = (thisId.parentNode.parentNode).querySelector("span.alert");


        switch (type) {


            case "1":
            
                target2.style.display = "none";
                target2.innerHTML = ((ObjectMaker(type,address))[1]).innerHTML
                target1.nextSibling.remove();
                target1.after((ObjectMaker(type,address))[0]);

                break;

            case "2":
            
                target2.style.display = "none";
                target2.innerHTML = ((ObjectMaker(type,address))[1]).innerHTML
                target1.nextSibling.remove();
                target1.after((ObjectMaker(type,address))[0]);
 
          
                break;

             case "3":
            
                target2.style.display = "none";
                target2.innerHTML = ((ObjectMaker(type,address))[1]).innerHTML         
                target1.nextSibling.remove();
                target1.after((ObjectMaker(type,address))[0]);
                    
     
              
                    break;

             case "3":
            
                target2.style.display = "none";
                target2.innerHTML = ((ObjectMaker(type,address))[1]).innerHTML
                target1.nextSibling.remove();
                target1.after((ObjectMaker(type,address))[0]);
                        
         
                  
                    break;

             case "4":
            
                target2.style.display = "block";
                target2.innerHTML = ((ObjectMaker(type,address))[0]).innerHTML
                target1.nextSibling.remove();
                target1.after((ObjectMaker(type,address))[1]);
                            
             
                break;

        }


        }
choiceEvent = function(address,functionType){

            var parent = address.parentNode;


    
            lengthCheck = function(parent){
    
                return (parent.querySelectorAll("input.itemReply-3,input.itemReply-4")).length;
                       
            }
    
            switch (functionType) {
    
                case 0:
    
                    plusMaker = function(type){
    
                        var plus1 = document.createElement("input");
                        plus1.setAttribute("type","checkbox");
                        plus1.setAttribute("disabled","disable");
                        plus1.setAttribute("checked","checked");
                        plus1.style.width = "18px";
                        plus1.style.height = "18px";
                        plus1.style.marginRight = "26px";
                        var plus2 = document.createElement("input");
                        plus2.setAttribute("type","text");
                        plus2.setAttribute("maxlength","30");
                        plus2.setAttribute("class",type);
                        plus2.setAttribute("placeholder","내용을 입력해주세요");
                        var br = document.createElement("br");
            
                       
                         
                        return [plus1,plus2,br]
            
                    }
                    
  
                    var type = address.previousSibling.previousSibling.className;
                    if( lengthCheck(parent) == 6 ){
    
                        alert("선택지의 갯수는 6개가 최대입니다!");
                        return false;
    
                    }
                    var value = plusMaker(type);

                    address.before(value[0])
                    address.before(value[1])
                    address.before(value[2])
    
                    break;
    
                case 1:
                    
                   
                    if( lengthCheck(parent) == 2 ){
    
                        alert("선택지의 갯수는 2개가 최소입니다!");
                        return false;
    
                    }  
                    
                    parent.querySelector("br:last-of-type").remove();
                    parent.querySelector("input:last-of-type").remove();
                    parent.querySelector("input:last-of-type").remove();

                    break;
            
            } 
        


    };
itemMinChange = function(target1,target2){

var length = target1.parentNode.nextSibling.querySelectorAll(".itemReply-4>input.itemReply-4").length;

if( target1.value > target2.value ){

alert("최소 값은 최대 값을 초과할 수 없습니다!")
target1.value = parseInt(target1.value) - 1

return false;

}

if( target1.value > length ){

alert("최소 값은 선택지 갯수보다 많을 수 없습니다!")
target1.value = parseInt(target1.value) - 1
    
}

}
itemMaxChange = function(target1,target2){

    var length = target1.parentNode.nextSibling.querySelectorAll(".itemReply-4>input.itemReply-4").length;

    if( target1.value < target2.value ){
    
    alert("최대 값은 최소 값보다 작을 수 없습니다!")
    target1.value = parseInt(target1.value) + 1
    
    return false;
    
    }
    
    if( target1.value > length ){
    
    alert("최대 값은 선택지 갯수보다 많을 수 없습니다!")
    target1.value = parseInt(target1.value) - 1
        
    }
    
    }
    notCheck = function(thisId){


        if ( thisId.checked ) {
    
            thisId.previousSibling.previousSibling.disabled = true;
    
        }else{
    
            thisId.previousSibling.previousSibling.disabled = false;
    
        }
       
    
    
    }    