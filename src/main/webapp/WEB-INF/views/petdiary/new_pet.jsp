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
        <nav class="mt-5 mb-3 header">
            <h1 class="name">
                마이 페이지
            </h1>
            <ul class="main_navbar mt-5">
                <li> <img src="../images/logoimage.png" alt="" class="logo"></li>
                <li> <a href="../mainpage.html" class="a">메인화면</a></li>
                <li> <a href="" class="a">마이펫 관리</a></li>
                <li> <a href="../login.html" class="a">로그인/회원가입</a></li>
                <li> <a href="../community/community.html" class="a">커뮤니티</a></li>
            </ul>
        </nav>
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

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</html>