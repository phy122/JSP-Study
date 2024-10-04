<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기타</title>
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
     <div class="container-lg">
        <div class="detail-area">
            <!-- 사이드 -->
             <div class="snb">
                <ul>
                    <li class="active"><a href="">전체 보기</a></li>
                    <li><a href="">COLLECTION</a></li>
                    <li><a href="">OUTER</a></li>
                    <li><a href="">TOP</a></li>
                    <li><a href="">BOTTOM</a></li>
                    <li><a href="">ACC</a></li>
                    <li><a href="">ETC</a></li>
                </ul>
             </div>
             <!-- 상품 목록 영역 -->
              <div class="product-box">
                <!-- 검색/필터 -->
                 <div class="search-filter">
                    <!-- 검색창 -->
                    <form action="/search" method="post">
                        <input type="text" name="keyward" placeholder="검색어">
                        <button type="submit" class="btn-search">
                            <!-- 검색 아이콘(돋보기) -->
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                    <!-- 필터 -->
                    <ul class="dropdown">
                        <li>
                            <a href="">
                                <i class="fa fa-filter"></i>
                                필터
                            </a>
                            <ul class="submenu">
                                <li><a href="">낮은 가격순</a></li>
                                <li><a href="">높은 가격순</a></li>
                                <li><a href="">인기순</a></li>
                                <li><a href="">최신순</a></li>
                            </ul>
                        </li>
                    </ul>
                 </div>
                 <!-- 상품 목록 -->
                  <section class="product-list">
                    <div class="inner">
                        <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/플랙스 위트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Nike</h1>
                                    <a href=""><h3>Nike Air Force 1 '07 WB Flax Whea</h3></a>
                                    <p>나이키 에어포스 1 '07 WB 플랙스 위트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">126,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/로우 트리플 블랙.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Nike</h1>
                                    <a href=""><h3>Nike Air Force 1 '07 Low Triple Black</h3></a>
                                    <p>나이키 에어포스 1 '07 로우 트리플 블랙</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">115,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/로우 화이트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Nike</h1>
                                    <a href=""><h3>Nike Air Force 1 '07 Low White</h3></a>
                                    <p>나이키 에어포스 1 '07 로우 화이트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">102,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/블랙 화이트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Nike</h1>
                                    <a href=""><h3>Nike Air Force 1 '07 Black White</h3></a>
                                    <p>나이키 에어포스 1 '07 블랙 화이트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">107,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/2002R 그레이.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>New Balance</h1>
                                    <a href=""><h3>New Balance 2002R Grey</h3></a>
                                    <p>뉴발란스 2002R 그레이</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">124,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/530 화이트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>New Balance</h1>
                                    <a href=""><h3>New Balance 530 White</h3></a>
                                    <p>뉴발란스 530 화이트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">100,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/550 화이트 그레이.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>New Balance</h1>
                                    <a href=""><h3>New Balance 550 White Grey</h3></a>
                                    <p>뉴발란스 550 화이트 그레이</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">128,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/574 레거시 그레이.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>New Balance</h1>
                                    <a href=""><h3>New Balance 574 Legacy Grey</h3></a>
                                    <p>뉴발란스 574 레거시 그레이</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">70,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/삼바 OG 클라우드 화이트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Adidas</h1>
                                    <a href=""><h3>Adidas Samba OG Cloud White</h3></a>
                                    <p>아디다스 삼바 OG 클라우드 화이트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">113,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/슈퍼스타 블랙 화이트.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Adidas</h1>
                                    <a href=""><h3>Adidas Superstar Core Black White</h3></a>
                                    <p>아디다스 슈퍼스타 코어 블랙 화이트</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">99,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/이지 슬라이드 다크 오닉스.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Adidas</h1>
                                    <a href=""><h3>Adidas Yeezy Slide Dark Onyx 2024</h3></a>
                                    <p>아디다스 이지 슬라이드 다크 오닉스</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">63,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                         <!-- 상품 카드 -->
                         <div class="product-card">
                            <div class="img-box">
                                <a href=""><img src="static/img/이지 폼 러너 오닉스.webp" alt="상품 이미지"></a>
                            </div>
                            <div class="content-box">
                                <!-- 가격 -->
                                 <div class="price">
                                <!-- 상품명 -->
                                 <div class="title">
                                 <h1>Adidas</h1>
                                    <a href=""><h3>Adidas Yeezy Foam RNNR Onyx</h3></a>
                                    <p>아디다스 이지 폼 러너 오닉스</p>
                                 </div>
                                    <h2>
                                    	<br>
                                        <span class="n-price">79,000</span>
                                    </h2>
                                 </div>
                                 <br>
                                 <!-- 옵션 -->
<!--                                   <div class="option-box"> -->
<!--                                     <div class="color"> -->
<!--                                         <span class="option-red"></span> -->
<!--                                         <span class="option-green"></span> -->
<!--                                         <span class="option-blue"></span> -->
<!--                                     </div> -->
<!--                                     <div class="size"> -->
<!--                                         <sapn class="option-size">S</sapn> -->
<!--                                         <sapn class="option-size active">M</sapn> -->
<!--                                         <sapn class="option-size active">L</sapn> -->
<!--                                         <sapn class="option-size">XL</sapn> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 액션 -->
                                 <div class="action-box">
                                    <!-- 리뷰 -->
                                     <div class="review">
                                        <i class="fa fa-comments">222</i>
                                     </div>
                                     <div class="action">
                                         <!-- 좋아요 -->
                                         <a href=""><i class="fa fa-heart-o"></i></a>
                                         <!-- 장바구니 -->
                                         <a href=""><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                            </div>
                         </div>
                    </div>
                  </section>
                  <!-- 페이지네이션 -->
                   <div class="pagenation">
                    <ul>
                        <li class="page"><a href=""><i class="fa fa-angle-double-left"></i></a></li>
                        <li class="page"><a href=""><i class="fa fa-angle-left"></i></a></li>
                        <li class="page"><a href="">1</a></li>
                        <li class="page"><a href="">2</a></li>
                        <li class="page"><a href="">3</a></li>
                        <li class="page"><a href="">4</a></li>
                        <li class="page"><a href="">5</a></li>
                        <li class="page"><a href=""><i class="fa fa-angle-right"></i></a></li>
                        <li class="page"><a href=""><i class="fa fa-angle-double-rightt"></i></a></li>
                    </ul>
                   </div>
              </div>
        </div>
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