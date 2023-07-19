<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS JS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/login.css">
    <script src="/js/login.js"></script>
    <title>My Pet Login</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <!-- body -->
    <div class="container my-5">
        <div class="mx-5">
            <label for="username" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요">
            <div id="idError" class="error"></div>
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
            <div id="passwordError" class="error"></div>
            <div class="form-check">
                <label class="form-check-label" for="accpet">로그인 상태 유지</label>
                <input type="checkbox" class="form-check-input" id="accpet">
            </div>
        </div>
        <br>
        <div class="d-grid gap-2 m-5">
            <button id="login" class="loginButton btn btn-primary" onclick="loginCheck()">로그인</button>
        </div>
        <hr>
        <div style="text-align: center;">
            <ul class="list-unstyled m-25" style="display: inline-block;">
                <li style="display: inline-block;">
                    <div style="text-align: center; margin-top: 10px; margin-bottom: 10px;">
                        <ul class="list-unstyled m-0" style="display: inline-block;">
                            <li style="display: inline-block;">
                                <a href="" class="text-decoration-none ps-3">아이디 찾기</a>
                            </li>
                            <li style="display: inline-block;">
                                <a href="" class="text-decoration-none ps-3">비밀번호 찾기</a>
                            </li>
                            <li style="display: inline-block;">
                                <a href="/main/register" class="text-decoration-none ps-3">회원가입</a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- /body -->
</body>

<!-- footer -->
<%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
<!-- /footer -->

</html>