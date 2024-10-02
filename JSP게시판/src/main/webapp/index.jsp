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
                <li><a href="login.html">로그인</a></li>
                <li><a href="join.html">회원가입</a></li>
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
                        <li><a href="home.html">Home</a></li>
                        <li><a href="list.jsp">Board</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="about.html">About</a></li>
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
        <!-- 섹션1 : 슬라이드 -->
         <section id="section1">
            <div class="slide">
                <div class="item"><img src="static/img/1.jpg" alt="이미지"></div>
                <div class="item"><img src="static/img/2.jpg" alt="이미지"></div>
                <div class="item"><img src="static/img/3.jpg" alt="이미지"></div>
            </div>
         </section>
        <!-- 섹션2 : 카드 뷰 섹션 -->
         <section id="section2">
            <div class="card-box">
                <!-- 카드 -->
                <div class="card">
                    <div class="card-img">
                        <img src="static/img/slide01.JPG" alt="이미지" width="100%">
                    </div>
                    <div class="card-title">
                        <h2>최신이미지 01</h2>
                    </div>
                    <div class="card-content">
                        <p>최신 이미지01 입니다</p>
                        <p>신상품 설명 내용입니다</p>
                    </div>
                    <div class="card-bottom">
                        <div class="item"><span>2025-09-24</span></div>
                        <div class="item"><i class="fa fa-heart"></i></div>
                    </div>
                </div>
                <!-- 카드 -->
                <div class="card">
                    <div class="card-img">
                        <img src="static/img/2.jpg" alt="이미지" width="100%">
                    </div>
                    <div class="card-title">
                        <h2>최신이미지 02</h2>
                    </div>
                    <div class="card-content">
                        <p>최신 이미지02 입니다</p>
                        <p>신상품 설명 내용입니다</p>
                    </div>
                    <div class="card-bottom">
                        <div class="item"><span>2025-09-24</span></div>
                        <div class="item"><i class="fa fa-heart"></i></div>
                    </div>
                </div>
                <!-- 카드 -->
                <div class="card">
                    <div class="card-img">
                        <img src="static/img/slide03.JPG" alt="이미지" width="100%">
                    </div>
                    <div class="card-title">
                        <h2>최신이미지 03</h2>
                    </div>
                    <div class="card-content">
                        <p>최신 이미지03 입니다</p>
                        <p>신상품 설명 내용입니다</p>
                    </div>
                    <div class="card-bottom">
                        <div class="item"><span>2025-09-24</span></div>
                        <div class="item"><i class="fa fa-heart"></i></div>
                    </div>
                </div>
            </div>
        
        </div>
         </section>
        <!-- 섹션3 : 미디어 텍스트 섹션 -->
         <section id="section3" class="layout-detail">
            <div class="inner">
                <div class="detail-img">
                    <img src="static/img/sec-03.jpg" alt="섹션3 이미지">
                </div>
                <div class="detail-content">
                    <div class="content-box">
                        <h3>Title - Section 03</h3>
                        <p>
                            Section Detail Contents
                            This is Section 03 Contents.
                        </p>
                    </div>
                    <div class="btn-box">
                        <a href="" class="btn">Button 01</a>
                    </div>
                </div>
            </div>
         </section>
        <!-- 섹션4 : 미디어 텍스트 섹션 -->
        <section id="section4" class="layout-detail reverse">
            <div class="inner">
                <div class="detail-img">
                    <img src="static/img/sec-04.jpg" alt="섹션4 이미지">
                </div>
                <div class="detail-content">
                    <div class="content-box">
                        <h3>Title - Section 04</h3>
                        <p>
                            Section Detail Contents
                            This is Section 04 Contents.
                        </p>
                    </div>
                    <div class="btn-box">
                        <a href="" class="btn">Button 02</a>
                    </div>
                </div>
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
</html>