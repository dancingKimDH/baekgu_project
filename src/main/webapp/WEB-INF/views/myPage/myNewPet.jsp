<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main.css">
    <title>My Pet MyPage</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <!-- body -->
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <div class="mb-3">
                    <label for="pet_name" class="form-label">애완동물의 이름</label>
                    <input type="text" class="form-control" id="pet_name" placeholder="이름을 입력하세요.">
                </div>
                <div class="mb-3">
                    <label for="pet_age" class="form-label">애완동물의 나이</label>
                    <input type="text" class="form-control" id="pet_age" placeholder="나이를 입력하세요.">
                </div>
                <div class="mb-3">
                    <label for="gender" class="form-label">성별</label>
                    <select class="form-select" id="gender">
                        <option value="male">남자</option>
                        <option value="female">여자</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="pet_weight" class="form-label">체중 (숫자만 입력하세요.)</label>
                    <input type="text" class="form-control" id="pet_weight" placeholder="10">
                </div>
                <div class="mb-3">
                    <label for="confirm-password" class="form-label">분류</label>
                    <input type="text" class="form-control" id="pet_health" placeholder="예) 치와와, 웰시코기, 시바견">
                </div>
                <div class="fs3 my-3">중성화 여부</div>
                <div class="my-3">
                    <input type="radio" name="browsers" value="edge" class="form-check-input" id="neuterY">
                    <label for="neuterY" class="form-check-label">네</label>
                    <input type="radio" name="browsers" value="chrome" class="form-check-input" id="neuterN">
                    <label for="neuterN" class="form-check-label">아니요</label>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">등록하기</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /body -->
</body>

<!-- footer -->
<%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
<!-- /footer -->

</html>