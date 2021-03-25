<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./resources/js/logout.js"></script>
<script type="text/javascript">
	function openTab(evt, tabName) {
	    var i, tabcontent, tablinks, tablinkss;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    tablinkss = document.getElementsByClassName("tablinkss");
	    for (i = 0; i < tablinkss.length; i++) {
	        tablinkss[i].className = tablinkss[i].className.replace(" active", "");
	    }
	    document.getElementById(tabName).style.display = "block";
	    evt.currentTarget.className += " active";
	}
	
</script>
<body>	

 <div id="headerWrap">
        <header>
            <div id="logobox">
                <a href="index"><img src="./resources/img/form.png" alt="로고"></a>
            </div>
            <div id="login">
                <a href="mypage"><p><u>${id}</u></p></a>
                <button type="button" id="logout">로그아웃</button>
            </div>
            <div class="reply">
                <a href="answer">응답보기</a>
            </div>
        </header>
    </div>

    <div id="main">
        <div class="tab">
            <button class="tablinks active" onclick="openTab(event, 'tab1')">새문서</button>
            <button class="tablinks" onclick="openTab(event, 'tab2')">저장된 문서</button>
            <button class="tablinkss" onclick="openTab(event, 'tab3')">설문중인 문서</button>
        </div>
        <hr>

        <div id="tab1" class="tabcontent" style="display: block;">
            <div class="one">
                <div class="container">
                    <a href="insertForm">
                        <div class="item">1</div>
                        <div class="textbox">
                            <h3>새문서</h3>
                        </div>
                        <a href="">
                            <div class="item">2</div>
                            <div class="textbox">
                                <h3>선택형설문지</h3>
                            </div>
                        </a>
                        <a href="">
                            <div class="item">3</div>
                            <div class="textbox">
                                <h3>선호도형설문지</h3>
                            </div>
                        </a>
                        <a href="">
                            <div class="item">4</div>
                            <div class="textbox">
                                <h3>조합설문지</h3>
                            </div>
                        </a>

                </div>
            </div>
        </div>
        <div id="tab2" class="tabcontent" style="display: none;">
            <div class="save">
                <table class="two">
                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>고객 만족도 조사 <br>응답기간 2021.02.24~2021.02.25</th>
                            <td>10</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>
                <table class="two">
                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>강의평가 <br>응답기간 2021.02.24~2021.02.25</th>
                            <td>10</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>
                <table class="two">
                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>자기평가 <br>-</th>
                            <td>10</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
        <div id="tab3" class="tabcontent" style="display: none;">
            <div class="ing">
                <table class="three">

                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>고객 만족도 조사 <br>응답기간 2021.02.24~2021.02.25</th>
                            <td>10</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>

                <table class="three">
                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>강의평가 <br>응답기간 2021.02.24~2021.02.25</th>
                            <td>5</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>
                <table class="three">
                    <thead>
                        <tr class="top">
                            <th scope="cols">제목</th>
                            <th scope="cols">답변건수</th>
                            <th scope="cols">메뉴</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>자기평가 <br>-</th>
                            <td>6</th>
                            <td><a href=""><img src="./resources/img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (2).png" alt="">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a><a href=""><img src="./resources/img/pngwing.com (3).png" alt="">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a></th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<link rel="stylesheet" href="./resources/css/made.css">

</html>