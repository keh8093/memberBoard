submitEvent = function(type){

  var target = document.querySelectorAll(".inputSubject");
  var length = target.length;

  nullCheck = function(target,length){
  
    for ( var i = 0; i < length ; i ++ ){
  
      var alert = "";
      var value = target[i].parentNode.parentNode.querySelector("div:last-of-type").previousSibling;
      var boolean = false;
  
      if(target[i].value == ""){
  
          alert = "제목의 공백을 채워주세요!";
          boolean = true;
  
      }else if( !( i == 0 ) && (target[i].value).indexOf("&") > -1 || (target[i].value).indexOf("$") > -1 ){

        if( boolean ) { alert = alert + "\n" + "제목에 & 혹은 $ 를 쓰지 말아주세요!"; }
        else { alert = "제목에 & 혹은 $ 를 쓰지 말아주세요!"; }
        boolean = true;

      }

      if( !( i == 0 ) ){

        var inputValue = target[i].parentNode.parentNode.querySelectorAll("p");
        if ( (inputValue[2].querySelector("textarea").value).indexOf("&") > -1 || (inputValue[2].querySelector("textarea").value).indexOf("$") > -1 ){

          if( boolean ) { alert = alert + "\n" + "내용란에 & 혹은 $ 를 쓰지 말아주세요!"; }
          else { alert = "내용란에 & 혹은 $ 를 쓰지 말아주세요!"; }
          boolean = true;
  
        }

  
        var className = target[i].parentNode.parentNode.querySelector("p:last-of-type>span:last-of-type").className;
        if ( className == "itemReply-3" || className == "itemReply-4" ){

          var choiceValue = target[i].parentNode.parentNode.querySelectorAll("p:last-of-type>span:last-of-type>input[type='text']");
          var choiceLength = choiceValue.length;
          var j = 0;
          while( j < choiceLength ){
  
           if ( choiceValue[j].value == "" ){
  
             if( boolean ) { alert = alert + "\n" + "선택지의 질문란에 공백을 채워주세요!"; }
             else { alert = "선택지의 질문 공백을 채워주세요!"; }
             boolean = true;
  
           }


           if ( ( choiceValue[j].value ).indexOf("&") > -1 || ( choiceValue[j].value ).indexOf("$") > -1 ){
  
            if( boolean ) { alert = alert + "\n" + "선택지의 질문란에 & 혹은 $ 를 쓰지 말아주세요!"; }
            else { alert = "선택지의 질문란에 & 혹은 $ 를 쓰지 말아주세요!"; }
            boolean = true;
          
           }

           if( boolean ) break;
     
           j = j + 1;
  
          }
  
        }
  
      }
  
      if( boolean ) { value.style.display = "inline-block"; }
      else{ value.style.display = "none"; };
      
      value.innerText = alert;
  
    }
  
  
    return !(boolean);
  
  }

  submitPlus = function(target,length){

    arrayMaker = function(type,array){

      var length = array.length;
      var returnValue;
      for( var i = 0; i < length; i ++ ){
   
       if( i == 0 ) returnValue = array[0];
       if( i != 0 ){
   
         returnValue = returnValue + type + array[i];
   
       }
   
   
      }
   
      return returnValue;
      
     }

    var formSubject;
    var formContent;
    var formState = type;
    var formDate;
    var itemNeed = new Array();
    var itemSubject = new Array();
    var itemContent = new Array();
    var itemType = new Array();
    var itemMin = new Array();
    var itemMax = new Array();
    var itemReply = new Array();
  
    for( var i = 0; i < length ; i++ ){
  
  
      if( i == 0 ){
  
        var mainForm = target[i].parentNode.parentNode;
        formSubject = mainForm.querySelector(".inputSubject").value;
        formContent = mainForm.querySelector(".inputContent").value;
  
        if( mainForm.querySelector("#notCheck").checked ){
  
          console.log("체크가 되어있네!")
          formDate = null;
  
        }
        else{
  
          formDate = mainForm.querySelector(".inputDate").value;
          console.log("체크가 안 되어있네!")
  
        }
  
  
      }
  
      if( i != 0 ){
  
      
        var subForm = target[i].parentNode.parentNode.querySelectorAll("p");
        if ( subForm[0].querySelector(".itemNeed").checked ){
  
          itemNeed.push(1)
  
        }else{
  
          itemNeed.push(0)
  
        }

        itemSubject.push(subForm[1].querySelector(".inputSubject").value); 
        itemContent.push(subForm[2].querySelector(".inputContent").value); 
        itemType.push(subForm[3].querySelector(".inputType").value);
        itemMin.push(subForm[4].querySelector("input:nth-of-type(1)").value)
        itemMax.push(subForm[4].querySelector("input:nth-of-type(2)").value)

        
        var reply = subForm[5].querySelector("span:nth-of-type(2)").querySelectorAll("textarea,input[type='text']");
        var replyLength = reply.length;
        var temporaryArray = new Array();

        for ( var k = 0; k < replyLength; k++ ){ temporaryArray.push( reply[k].value ) }

        var temporaryArray = arrayMaker("$",temporaryArray); 

        itemReply.push(temporaryArray);
  
  
      }
  
  
    };
  
    var form = document.querySelector("form");
    // 메인 데이터 집어넣기
    form.querySelector("input[name='formSubject']").value = formSubject;
    form.querySelector("input[name='formContent']").value = formContent;
    form.querySelector("input[name='formState']").value = formState;
    form.querySelector("input[name='formDate']").value = formDate;
    // 설문조사 데이터 집어넣기
    form.querySelector("input[name='itemSubject']").value = arrayMaker("&",itemSubject);
    form.querySelector("input[name='itemMin']").value = arrayMaker("&",itemMin);
    form.querySelector("input[name='itemMax']").value = arrayMaker("&",itemMax);
    form.querySelector("input[name='itemReply']").value = arrayMaker("&",itemReply)
    form.querySelector("input[name='itemType']").value = arrayMaker("&",itemType)
    form.querySelector("input[name='itemNeed']").value = arrayMaker("&",itemNeed)


    console.log("-- formSubject 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='formSubject']").value )
    console.log("-- formContent 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='formContent']").value )
    console.log("-- formDate 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='formDate']").value )
    console.log("-- formState 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='formState']").value )
    console.log("-- itemSubject 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemSubject']").value )
    console.log("-- itemMin 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemMin']").value )
    console.log("-- itemMax 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemMax']").value )
    console.log("-- itemReply 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemReply']").value )
    console.log("-- itemType 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemType']").value )
    console.log("-- itemNeed 컬럼에 들어갈 값 --")
    console.log( form.querySelector("input[name='itemNeed']").value )

    var submit = document.querySelector("form>input[type='submit']");
    submit.click();

    
  }


  if ( nullCheck(target,length) ){

    
    if( type == 1 ){

      if(confirm("정말로 작성하시겠습니까? 수정이 불가능합니다!")){
  
        submitPlus(target,length);

      };

    }else{

      submitPlus(target,length);

    }
    
  }

}