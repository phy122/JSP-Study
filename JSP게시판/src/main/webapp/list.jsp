<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="static/css/reset.css">
    <link rel="stylesheet" href="static/css/style.css">
</head>
<body>
	<input type="checkbox" name="bars" id="bars">

    <!-- 플로팅 버튼 -->
     <div class="floating">
        <a href="#top"><i class="fa fa-arrow-circle-up"></i></a>
     </div>

     <!-- 사이드바 -->
      <div class="sidebar">
        <ul class="sidemenu">
            <li>
                <a href="">
                    <h3>사이드바</h3>
                    <p>사이드바 메뉴 설명</p>
                </a>
            </li>
            <li>
                <a href="">
                    <h3>사이드바</h3>
                    <p>사이드바 메뉴 설명</p>
                </a>
            </li>
            <li>
                <a href="">
                    <h3>사이드바</h3>
                    <p>사이드바 메뉴 설명</p>
                </a>
            </li>
            <li>
                <a href="">
                    <h3>사이드바</h3>
                    <p>사이드바 메뉴 설명</p>
                </a>
            </li>
        </ul>
      </div>

     <!-- 헤더 -->
     <header>
        <!-- util -->
         <div class="util">
            <ul class="util-menu">
                <li><a href="login.jsp">로그인</a></li>
                <li><a href="join.jsp">회원가입</a></li>
            </ul>
         </div>
        <!-- menu -->
         <div class="menu">
            <div class="menu-left">
                <a href=""><i class="fa fa-user"></i></a>
            </div>
            <div class="menu-center">
                <nav class="pc">
                    <ul>
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="board.jsp">Board</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                        <li><a href="about.jsp">About</a></li>
                    </ul>
                </nav>
            </div>
            <div class="menu-right">
                <a href="javascript:;">
                    <label for="bars" class="bars">
                        <span class="bar top"></span>
                        <span class="bar mid"></span>
                        <span class="bar bottom"></span>
                    </label>
                </a>
            </div>
         </div>
    </header>

    <!-- 메인 -->
     <div class="container">
        <section>
        <div class="title-box">
            <h1 class="main-title">게시판</h1>
            <a href="insert.jsp" class="btn">글쓰기</a>
        </div>
            <div class="search-filter">
                <!-- 검색ui -->
                <div class="item">
                    <form action="/board" method="get">
                    <select name="category" id="category" class="filter-select">
                        <option value="0">전체</option>
                        <option value="0">제목+내용</option>
                        <option value="0">제목</option>
                        <option value="0">작성자</option>
                        <option value="0">내용</option>
                    </select>
                    <input type="text" placeholder="검색어를 입력하세요" name="keyward" class="search-input">
                    <input type="submit" class="search-button" value="검색">
                </form>
            </div>
            <!-- 필터 -->
            <div class="item">
                <select name="rows" id="rows" class="filter-select">
                    <option value="5">5개씩</option>
                    <option value="10">10개씩</option>
                    <option value="20">20개씩</option>
                    <option value="30">30개씩</option>
                    <option value="40">40개씩</option>
                    <option value="50">50개씩</option>
                </select>
            </div>
        </div>
        
  
        <!-- 게시글 목록 -->
          <table class="board-list">
              <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody id="board-list">
                <!-- (tr>(td{$}+td{게시글 제목 $}+td{작성자$}+td{2024-09-%%}))*10 -->
                <c:forEach items="${boardList}" var="board">
            <tr>
                <td>${board.no}</td>
                <td>
                    <a href="read.jsp?no=${board.no}">${board.title}</a>
                </td>
                <td>${board.writer}</td>
                <td>${board.regDate}</td> </tr>
        </c:forEach>
            </tbody>
          </table>
          <!-- 페이지네이션 -->
         <div class="pagenation">
             <!-- ≪ ＜ ＞ ≫ -->
             <a href="" class="page-link">≪</a>
             <a href="" class="page-link">＜</a>
             <a href="" class="page-link selected">1</a>
             <a href="" class="page-link">2</a>
             <a href="" class="page-link">3</a>
             <a href="" class="page-link">4</a>
             <a href="" class="page-link">5</a>
             <a href="" class="page-link">＞</a>
             <a href="" class="page-link">≫</a>
            </div>
        </section>
    </div>

    <!-- 푸터 : 사이트맵+패밀리사이트+카피라이트 -->
    <footer>
        <div class="footer-menu">
            <div class="site-map">
                <div class="item">
                    <ul>
                        <li>Board</li>
                        <li>공지사항</li>
                        <li>자유게시판</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>Gallery</li>
                        <li>취미 갤러리</li>
                        <li>자유 갤러리</li>
                    </ul>
                </div>
                <div class="item">
                    <ul>
                        <li>About</li>
                        <li>사이트 소개</li>
                    </ul>
                </div>
            </div>
            <div class="family-site">
                <select name="site" id="site">
                    <option value="1">카카오</option>
                    <option value="2">네이버</option>
                    <option value="3">구글</option>
                </select>
            </div>
        </div>
        <div class="copy">
            <p>Copyright ⓒ ALOHA CLASS. ALL Rights Reversed</p>
        </div>
    </footer>
</body>
<script>
let request

document.addEventListener("DOMContentLoaded", function(){
    // 게시글 목록 요청
    list()
})

// 게시글 목록 조회
function list(){
    // XMLHttpRequest 객체 생성
    request = new XMLHttpRequest()

    // 요청 설정
    let url = 'http://192.168.30.119:8080/board'
    // request.open("요청메소드",url,비동기여부)
    request.open("GET",url,true)

    // 상태변화 이벤트 (응답 확인)
    request.onreadystatechange = function(){
        let response = ''
        // 요청 완료 및 응답 성공
        if(request.readyState == request.DONE && request.status == 200){
            response = request.responseText // 응답 데이터
            
            // JSON.parse : text -> JSON
            let boardList = JSON.parse(response)
            // [{no: 1, title:'...',...}, {no:2, title: '...'}...]
            if(boardList.lengh == 0){
                alert('응답된 데이터가 없습니다.')
            }
            else{
                console.log(boardList);
                let $boardList = document.getElementById('board-list')
                for (const board of boardList) {
                    // let date = board.regDate.substring(0, 10)
                    let date = new Date(board.regDate)
                    let year = date.getFullYear()
                    let month = date.getMonth() + 1
                    let day = date.getDate()
                    let h = date.getHours()
                    let m = date.getMinutes()
                    let s = date.getSeconds()
                    date = `${year}-${month}-${day} ${h}:${m}:${s}`
                    let tr = `<tr>
                                <td>${board.no}</td>
                                <td>
                                    <a href="read.jsp?no=${board.no}">${board.title}</a>
                                </td>
                                <td>${board.writer}</td>
                                <td>${date}</td>
                             </tr>`
                    $boardList.innerHTML += tr
                }
            }
        }
    } // 상태변화 이벤트 끝
    // 요청 전송
    request.send()
}
</script>
</html>