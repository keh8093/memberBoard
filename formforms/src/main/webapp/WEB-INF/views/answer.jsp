<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
                <a href="mypage">
                    <p><u>${id}</u></p>
                </a>
                <button type="submit">로그아웃</button>
            </div>
            <div class="reply">
                <a href="made">만들기</a>
            </div>
        </header>
    </div>


    <div id="main">
        <div class="tab">
            <button class="tablinks active" onclick="openTab(event, 'tab1')">진행중</button>
            <button class="tablinks" onclick="openTab(event, 'tab2')">기간완료</button>
        </div>
        <hr>

        <div id="tab1" class="tabcontent" style="display: block;">
            <div class="one">
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
                            <td>16</th>
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(4).png" alt="종료하기">
                                    <div class="textbox">
                                        <p>종료하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
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
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(4).png" alt="종료하기">
                                    <div class="textbox">
                                        <p>종료하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
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
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(4).png" alt="종료하기">
                                    <div class="textbox">
                                        <p>종료하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
                        </tr>
                    </tbody>
                </table>

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
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
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
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
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
                            <td><a href=""><img src="./img/pngwing.com (1).png" alt="미리보기">
                                    <div class="textbox">
                                        <p>미리보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (2).png" alt="편집하기">
                                    <div class="textbox">
                                        <p>편집하기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com(5).png" alt="결과보기">
                                    <div class="textbox">
                                        <p>결과보기</p>
                                    </div>
                                </a>
                                <a href=""><img src="./img/pngwing.com (3).png" alt="삭제하기">
                                    <div class="textbox">
                                        <p>삭제하기</p>
                                    </div>
                                </a>
                                </th>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>

    </div>

</body>
</html>