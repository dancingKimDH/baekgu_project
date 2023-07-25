<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/main.css">
        <link rel="stylesheet" href="/css/myAccount.css">
        <title>My Pet myAccount</title>
    </head>

    <body>
        <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
            <div class="m-5 d-flex justify-content-center">
                <nav class="navbar">
                    <div class="navbar-nav">
                        <ul class="accountLine">
                            <li class="dropdown-item accountBox">내 프로필</li>
                            <li class="dropdown-item">이름 <a href="">수정</a></li>
                            <li class="dropdown-divider"></li>
                            <li class="dropdown-item">아이디</li>
                            <li class="dropdown-divider"></li>
                            <li class="dropdown-item">비밀번호</li>
                            <li class="dropdown-divider"></li>
                            <li class="dropdown-item">이메일</li>
                            <li class="dropdown-divider"></li>
                            <li class="dropdown-item">전화번호</li>
                            <li class="dropdown-item accountEndBox"></li>
                        </ul>
                    </div>
                </nav>
            </div>
    </body>
    <%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>

    </html>