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
            <h1 class="main-title">글조회</h1>
            <a href="javascript: ;" class="btn" onclick="update()">수정</a>
        </div>
        <div class="input-group">
            <label for="title">제목</label>
            <input type="text" name="title" placeholder="제목을 입력하세요" id="title">
        </div>
        <div class="input-group">
            <label for="writer">작성자</label>
            <input type="text" name="writer" placeholder="작성자를 입력하세요" id="writer">
        </div>
        <div class="input-group">
            <textarea name="content" id="content" cols="30" rows="10"></textarea>
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
    read()
})

// 게시글 수정화면으로 이동
function update(){
     // 글번호(no)
    const params = new URLSearchParams(location.search)
    const no = params.get('no')

    location.href = `update.jsp?no=${no}`

}

// 게시글 조회
function read(){
    // XMLHttpRequest 객체 생성
    request = new XMLHttpRequest()
    // 글번호(no)
    const params = new URLSearchParams(location.search)
    const no = params.get('no')
    
    // 요청 설정
    let url = `http://192.168.30.119:8080/board/${no}`
    // request.open("요청메소드",url,비동기여부)
    request.open("GET",url,true)

    // 상태변화 이벤트 (응답 확인)
    request.onreadystatechange = function(){
        let response = ''
        // 요청 완료 및 응답 성공
        if(request.readyState == request.DONE && request.status == 200){
            response = request.responseText // 응답 데이터
            
            // JSON.parse : text -> JSON
            // {no: 1, title:'...',...}
            if(response == '' ){
                alert('응답된 데이터가 없습니다.')
            }
            else{
                let board = JSON.parse(response)
                console.log(board);
                
                let title = document.getElementById('title')
                let writer = document.getElementById('writer')
                let content = document.getElementById('content')

                // 조회된 게시글 정보 출력
                title.value = board.title
                writer.value = board.writer
                content.value = board.content
            }
        }
    } // 상태변화 이벤트 끝
    // 요청 전송
    request.send()
}
</script>
</html>