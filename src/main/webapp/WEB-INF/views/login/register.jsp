<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS JS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/register.css">
    <script src="/js/register.js"></script>
    <title>My Pet Register</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <%
    HashMap params = (HashMap)request.getAttribute("params");
    String searchStr = (String)params.getOrDefault("search", "");
    %>
    <!-- body -->
    <form action="">
    <div class="container my-5">
        <div class="mb-3">
            <label for="id" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요.">
            <div id="idError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요.">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="passwordCheck" class="form-label">비밀번호 재입력</label>
            <input type="passwordCheck" class="form-control" id="passwordCheck" placeholder="비밀번호를 다시 입력하세요.">
            <div id="passwordCheckError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요.">
            <div id="emailError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요.">
            <div id="nameError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">성별</label>
            <select class="form-select" id="gender">
                <option value="male">남성</option>
                <option value="female">여성</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="birth" class="form-label">생년월일</label>
            <input type="text" class="form-control" id="birth" value maxlength="8" placeholder="생년월일 8자리">
            <div id="birthError" class="error"></div>
        </div>
        <div class="mb-3">
            <label for="telecom" class="form-label">통신사</label>
            <select class="form-select" id="telecom">
                <option value="skt">SKT</option>
                <option value="kt">KT</option>
                <option value="lgu">LG U+</option>
                <option value="sktc">SKT 알뜰폰</option>
                <option value="ktc">KT 알뜰폰</option>
                <option value="lguc">LG U+ 알뜰폰</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="number" class="form-label">휴대폰번호</label>
            <input type="text" class="form-control" id="number" maxlength="11" placeholder="휴대폰번호를 입력하세요." oninput="phoneNumber()">
        </div>
        <div class="auth button_box">
            <div id="certificationNumber">000000</div>
            <button class="registerBtn" disabled id="sendMessage" onclick="getToken(); return false;">인증번호 전송</button>
        </div>
        <div class="timer button_box">
            <div id="timeLimit">03:00</div>
            <button class="registerBtn" disabled id="completion" onclick="checkCompletion(); return false;">인증확인</button>
        </div>
        <div class="m-5 form-check registerText">
            <label class="form-check-label" for="accept">회원가입에 동의합니다.</label>
            <input type="checkbox" class="form-check-input" id="accept">
        </div>
        <div class="d-grid gap-2">
            <button id="register" class="register_box" disabled onclick="signUpCheck()">회원가입</button>
        </div>
    </div>
</form>
    <!-- /body -->
</body>

<!-- footer -->
<%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
<!-- /footer -->

</html>