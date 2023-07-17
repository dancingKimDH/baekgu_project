<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">

    <style>
        /* 헤더 우측 정렬 */
        header {
            text-align: right;
        }

        /* 헤더와 메인에 배경색 적용 */
        main {
            background-color: #b3d9eb;
        }

        /* 로그인 버튼 색상 변경 */
        .btn-primary {
            background-color: #b3d9eb;
            border-color: #b3d9eb;
        }
    </style>

    <title>Your Website</title>
</head>

<main>
    <div style="text-align: center;">
        <ul class="list-unstyled m-25" style="display: inline-block;">
            <li style="display: inline-block; float: left;">
                <a href="./mainpage.html">
                    <img src="./images/logoimage.png" alt="logo image" width="70" height="70">
                    <hr>
                  </a>
                <div style="text-align: center; margin-top: 10px; margin-bottom: 10px;">
                    <ul class="list-unstyled m-0" style="display: inline-block;">
                        <li style="display: inline-block;">
                            <a href="" class="text-white text-decoration-none ps-3" style="font-size: 1.5rem;">로그인</a>
                        </li>
                    </ul>
                </div>
        </ul>
        </ul>
    </div>

    <body>
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label for="username" class="form-label">아이디</label>
                            <input type="text" class="form-control" id="username" placeholder="아이디를 입력하세요">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">패스워드</label>
                            <input type="password" class="form-control" id="password" placeholder="패스워드를 입력하세요">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">로그인</button>
                        </div>
                        <div class="text-center mt-3">
                            <p>회원이 아니신가요? <a href="./register.html">회원가입</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="p-5 d-flex justify-content-between align-items-center">
            <div class="row">
                <div class="">
                    <div class="">
                        <ul class="list-unstyled d-flex">
                            <li>
                                <a href="" class="text-black text-decoration-none ps-2">이용약관</a>
                            </li>
                            <li>
                                <a href="" class="text-black text-decoration-none ps-2">개인정보처리방침</a>
                            </li>
                            <li>
                                <a href="" class="text-black text-decoration-none ps-2">고객센터</a>
                            </li>
                            <li>
                                <a href="" class="text-black text-decoration-none ps-2">공지사항</a>
                            </li>
                        </ul>
                    </div>
                    <div style="text-align: left;">
                        <ul class="list-unstyled m-0">
                            <li class="pt-1">
                                대표번호: 080-123-4567 (업무시간: 09:00-18:00 월~금) 주말 및 공휴일 휴무
                            </li>
                            <li class="pt-1">
                                <span class="pe-3">대표자: THE GLORY</span>
                                <span>주소: 서울시 구로구</span>
                            </li>
                            <li class="pt-1">
                                <span>법인명: (주)THE GLORY</span>
                                <span>사업자 등록정보: 123-45-6789</span>
                            </li>
                            <li class="pt-1">
                                <span>호스팅: (주)THE GLORY</span>
                                <span>E-MAIL: THE GLORY@THE GLORY.com</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <img src="./images/logoimage.png" alt="logo" height="120rem" />
            </div>
        </footer>
        <!-- Bootstrap Bundle with Popper.js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    </body>