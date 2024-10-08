<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="static/css/reset.css">
    <link rel="stylesheet" href="static/css/style.css">
    <!-- Masonry 라이브러리 (벽돌쌓기 라이브러리) -->
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
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
                        <li><a href="list.jsp">Board</a></li>
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
        <section class="gallery">,
            <h1 class="main-title txt-center">티니핑 갤러리</h1>
            <div class="grid">
                <!-- https://via.placeholder.com/가로X세로 -->
            <div class="grid-item"><img src="static/img/하츄핑.png" alt="image 1"></div>
            <div class="grid-item"><img src="static/img/깜빡핑.png" alt="image 2"></div>
            <div class="grid-item"><img src="static/img/나르핑.png" alt="image 3"></div>
            <div class="grid-item"><img src="static/img/따라핑.png" alt="image 4"></div>
            <div class="grid-item"><img src="static/img/띠용핑.png" alt="image 5"></div>
            <div class="grid-item"><img src="static/img/라라핑.png" alt="image 6"></div>
            
            <div class="grid-item"><img src="static/img/무셔핑.png" alt="image 1"></div>
            <div class="grid-item"><img src="static/img/바로핑.png" alt="image 2"></div>
            <div class="grid-item"><img src="static/img/부끄핑.png" alt="image 3"></div>
            <div class="grid-item"><img src="static/img/부투핑.png" alt="image 4"></div>
            <div class="grid-item"><img src="static/img/아잉핑.png" alt="image 5"></div>
            <div class="grid-item"><img src="static/img/아자핑.png" alt="image 6"></div>
            
            <div class="grid-item"><img src="static/img/주르핑.png" alt="image 1"></div>
            <div class="grid-item"><img src="static/img/차나핑.png" alt="image 2"></div>
            <div class="grid-item"><img src="static/img/차차핑.png" alt="image 3"></div>
            <div class="grid-item"><img src="static/img/키키핑.png" alt="image 4"></div>
            <div class="grid-item"><img src="static/img/투투핑.png" alt="image 5"></div>
            <div class="grid-item"><img src="static/img/해핑.png" alt="image 6"></div>
            
            <div class="grid-item"><img src="static/img/시러핑.png" alt="image 1"></div>
            <div class="grid-item"><img src="static/img/화나핑.png" alt="image 2"></div>
            <div class="grid-item"><img src="static/img/다조핑.png" alt="image 3"></div>
            <div class="grid-item"><img src="static/img/떠벌핑.png" alt="image 4"></div>
            <div class="grid-item"><img src="static/img/차캐핑.png" alt="image 5"></div>
            <div class="grid-item"><img src="static/img/악동핑.png" alt="image 6"></div>
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
    
    <script>
            //벽돌쌓기 라이브러리 초기화 코드
            var elem = document.querySelector('.grid');
            var msnry = new Masonry( elem, {
            // options
            itemSelector: '.grid-item',
            columnWidth: 250,
            gutter:10,
            fitWidth:true,
        });
    </script>
</body>
</html>