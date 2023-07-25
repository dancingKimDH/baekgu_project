<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/community_write.css">
    <title>My Pet Community Write</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <div class="content-section">
        <div class="container">
            <div class="navbar-nav me-auto">
                <div class="dropdown nav-item">
                    <div class="row">
                        <label class="content-title" for="">분류</label>
                        <select class="form-select" name="browsers" id="">
                            <option value="-------------">-------------</option>
                            <option value="자랑">자랑</option>
                            <option value="병원">병원</option>
                            <option value="사료/간식">사료/간식</option>
                            <option value="기타">기타</option>
                        </select>
                    </div>
                </div>
                <h3 class="content-title">제목</h3>
                <div class="input-title-box">
                    <form action="/commuWrite/insert" method="get">
                            <option>Insert Title</option>
                    <input class="input-title-field" type="text" placeholder="제목을 입력하세요">
                </div>
                <h3 class="content-title">내용</h3>
                <div class="textarea-box">
                    <textarea rows="30" class="textarea-field" placeholder="내용을 입력하세요"></textarea>
                </div>
                <div class="footer-buttons">
                    <button type="submit" formaction="" class="register-button">
                        <a href="/main/community" class="register-button">등록</a>
                    </button>
                    <button type="submit" formaction="" class="cancel-button">
                        <a href="/main/community" class="cancel-button">취소</a>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
    <!-- /footer -->
</body>

</html>