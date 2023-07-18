<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap CSS -->
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/pet_diary.css">
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
            
            <!-- 헤더 -->
            <%@ include file="../baekgu/header.jsp" %>
                        <script>
                            function redirectToPage() {
                                // 로그인 상태를 확인하는 로직을 isLoggedIn에 작성
                                var isLoggedIn = false; // 실제 로그인 상태를 확인하는 로직으로 대체

                                if (isLoggedIn) {
                                    // 사용자가 로그인된 상태일 경우, 원하는 페이지로 리다이렉트
                                    location.href = './pet_diary/my_pet_manage.html';
                                }

                                else {
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
        <div>
            <div class=" white_maintable mt-1">

                <table class="white_table">
                    <div>
                        <tr>
                            <td colspan="5" class="table_title">
                                나의 펫 목록
                            </td>

                        </tr>
                        <tr class="table_title">
                            <td>
                                Name
                            </td>
                            <td>
                                Age
                            </td>
                            <td>
                                Status
                            </td>
                            <td>
                                Notice
                            </td>
                            <td>
                                자세히 보기
                            </td>

                        </tr>
                    </div>
                    <tr>
                        <td>
                            팅팅이
                        </td>
                        <td>
                            5
                        </td>
                        <td>
                            건강
                        </td>
                        <td>
                            예방접종
                        </td>
                        <td>
                            <div class="container">

                                <a data-bs-toggle="modal" href="#modalTarget-id1" class="btn btn1">
                                    자세히 보기
                                </a>
                                <div class="modal" id="modalTarget-id1">
                                    <div class="modal-dialog modal-dialog-centered">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                팅팅이
                                            </div>
                                            <div class="modal-body">
                                                <table class="container">
                                                    <tr>
                                                        <td>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button data-bs-dismiss="modal" class="btn btn-secondary">
                                                    Close
                                                </button>
                                                <form action="">
                                                    <button data-bs-toggle="">
                                                        수정하기
                                                    </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            통통이
                        </td>
                        <td>
                            4
                        </td>
                        <td>
                            건강
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            <div class="container">

                                <a data-bs-toggle="modal" href="#modalTarget-id2" class="btn btn1">
                                    자세히 보기
                                </a>
                                <div class="modal" id="modalTarget-id2">
                                    <div class="modal-dialog modal-dialog-centered">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                통통이
                                            </div>
                                            <div class="modal-body">
                                                <table class="container">
                                                    <tr>
                                                        <td>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button data-bs-dismiss="modal" class="btn btn-secondary">
                                                    Close
                                                </button>
                                                <form action="">
                                                    <button class="submit">
                                                        수정하기
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            탱탱이
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            예방접종
                        </td>
                        <td>
                            <div class="container">

                                <a data-bs-toggle="modal" href="#modalTarget-id3" class="btn btn1">
                                    자세히 보기
                                </a>
                                <div class="modal" id="modalTarget-id3">
                                    <div class="modal-dialog modal-dialog-centered">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                탱탱이
                                            </div>
                                            <div class="modal-body">
                                                <table class="container">
                                                    <tr>
                                                        <td>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button data-bs-dismiss="modal" class="btn btn-secondary">
                                                    Close
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

        </div>
        <div class="button_box">
            <form action="./new_pet.html">
                <button class="btn2" type="submit">신규 동물 등록하기</button>
            </form>
            <form action="./statistics.html">
                <button class="btn2" type="submit">통계 보기</button>
            </form>
        </div>

    </body>
    <footer style="background-color: #b3d9eb;" class="b p-5 d-flex justify-content-between align-items-center">
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

                <%@ include file="../baekgu/footer.jsp" %>
            </div>
        </div>

    </footer>

    </html>