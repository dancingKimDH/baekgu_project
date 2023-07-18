<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/pet_diary.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
</head>

<body class="body">
    <div class="container">

        <%@ include file="../baekgu/header.jsp" %>
        
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    
                    <form class="mt-3">
                        <div class="mb-3">
                            <label for="pet_name" class="form-label">애완동물 이름</label>
                            <input type="text" class="form-control" id="pet_name" placeholder="이름을 입력하세요.">
                        </div>
                        <div class="mb-3">
                            <label for="pet_birth" class="form-label">애완동물 생년월일</label>
                            <input type="date" class="form-control" id="pet_birth">
                        </div>
                        <div>
                            성별: &nbsp;
                            <label for="pet_male">M</label>
                            <input type="radio" name="pet_male" id="pet_gender">
                            <label for="pet_male">F</label>
                            <input type="radio" name="pet_female" id="pet_gender">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">몸무게</label>
                            <input type="password" class="form-control" id="pet_weight" placeholder="kg">
                        </div>
                        <div class="mb-3">
                            <label for="confirm-password" class="form-label">건강 특이사항</label>
                            <input type="text" class="form-control" id="pet_health" placeholder="건강 특이사항을 입력하세요.">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">등록하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@ include file="../baekgu/footer.jsp" %>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</html>