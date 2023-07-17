<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/main.css">
    <title>My Pet</title>
</head>

<body>
    <div style="background-color: #b3d9eb;">
        <div>
        <header class="flex-container">
            <a class="c nav-link" href="./login.html">로그인</a>
            <a class="c nav-link" href="./register.html">회원가입</a>
        </header>
        </div>
        <div style="text-align: center;">
            <ul class="list-unstyled m-25" style="display: inline-block;">
                <li style="display: inline-block; float: left;">
                    <a href="./main.html">
                        <img src="./images/logoimage.png" alt="logo image" width="70px" height="70px">
                        <hr>
                    </a>
                    <div style="text-align: center; margin-top: 10px; margin-bottom: 10px;">
                        <ul class="list-unstyled m-0" style="display: inline-block;">
                            <li style="display: inline-block;">
                                <a href="../static/pet_diary/pet_introduce.html" class="a text-decoration-none ps-3" style="font-size: 1.3rem;">사이트 소개</a>
                            </li>
                            <li style="display: inline-block;">
                                <a href="./guide.html" class="a text-decoration-none ps-3" style="font-size: 1.3rem;">다이어리 사용안내</a>
                            </li>
                            <li style="display: inline-block;">
                                <a href="./community/community.html" class="a text-decoration-none ps-3" style="font-size: 1.3rem;">커뮤니티</a>
                            </li>
                            <li style="display: inline-block;">
                                <a href="#" onclick="redirectToPage(); return false;" class="a text-decoration-none ps-3" style="font-size: 1.3rem;">마이페이지</a>
                            </li>
    </div>

                        <script>
                            function redirectToPage()
                            {
                                // 로그인 상태를 확인하는 로직을 isLoggedIn에 작성
                                var isLoggedIn = false; // 실제 로그인 상태를 확인하는 로직으로 대체

                                if (isLoggedIn)
                                {
                                    // 사용자가 로그인된 상태일 경우, 원하는 페이지로 리다이렉트
                                    location.href = './pet_diary/my_pet_manage.html';
                                }
                                
                                else
                                {
                                    // 사용자가 로그인되지 않은 상태일 경우, 로그인 화면으로 리다이렉트
                                    location.href = './login.html';
                                }
                            }
                        </script>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</html>