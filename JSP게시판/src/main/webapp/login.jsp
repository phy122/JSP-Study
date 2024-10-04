<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="static/css/login.css">
</head>
<body>
	<div class="container">
        <form action="/login" method="post">
            <!-- 로그인 박스 -->
            <div class="login-wrap">
                <!-- 중첩 박스 -->
                <div id="login">
                    <!-- 로고 -->
                     <div class="login-logo">
                        <img src="static/img/aloha.png" alt="로고">
                     </div>
                     <!-- 아이디 -->
                     <div class="login-inputbox">
                        <input type="text" name="id" placeholder="아이디">
                        <!-- 밑줄선 -->
                        <span class="border"></span>
                     </div>
                     <!-- 비밀번호 -->
                     <div class="login-inputbox">
                        <input type="password" name="pw" placeholder="비밀번호">
                        <!-- 밑줄선 -->
                        <span class="border"></span>
                     </div>
                     <!-- 아이디저장/자동로그인 -->
                      <div class="login-remember">
                        <label for="remember-id">
                            <input type="checkbox" name="remember-id" id="remember-id">
                            <span class="checkmark"></span>
                            <span>아이디 저장</span>
                        </label>
                        <label for="remember-me">
                            <input type="checkbox" name="remember-me" id="remember-me">
                            <span class="checkmark"></span>
                            <span>자동 로그인</span>
                        </label>
                      </div>
                      <!-- 로그인 -->
                       <div class="login-btnbox">
                        <a href="" class="login-btn">로그인</a>
                       </div>
                       <!-- 회원가입 -->
                        <div class="login-btnbox">
                            <a href="" class="login-btn">회원가입</a>
                        </div>
                        <!-- 카피라이트 -->
                        <div class="copy">
                            <p>Copyright &copy; 2025 ALOHA CLASS. All rights reserved</p>
                        </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>