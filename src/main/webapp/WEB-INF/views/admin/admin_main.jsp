<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="/css/pet_diary.css">
        <link rel="stylesheet" href="/admin/css/admin.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    </head>

    <body class="body">
        <div class="wrapper">

            <%@ include file="../baekgu/header.jsp" %>

                <div class="search_bar container">
                    <form action="">
                        <input class="search_box" type="text" name="find_membername" id=""
                            placeholder="검색할 회원 이름을 입력하세요">
                        <a href="">
                            <img class="search_img" src="../images/search.png" alt="">
                        </a>
                    </form>
                </div>

                <div class="member_list">
                    <h3 class="admin_subject container">

                    </h3>
                    <!-- 리스트 -->
                    <table class="member_table mt-5">
                        <tbody class="member_list_body">
                            <tr class="table_first">
                                <td class="member_table_head">
                                    이름
                                </td>
                                <td class="member_table_head">
                                    ID
                                </td>
                                <td class="member_table_head">
                                    Password
                                </td>
                                <td class="member_table_head">
                                    가입일
                                </td>
                                <td class="member_table_head">
                                    애완동물
                                </td>
                                <td class="member_table_head">
                                    수정/탈퇴
                                </td>

                            </tr>
                            <tr>
                                <td class="member_list_cell">
                                    김진석
                                </td>
                                <td class="member_list_cell">
                                    js_0101
                                </td>
                                <td class="member_list_cell">
                                    js***
                                </td>
                                <td class="member_list_cell">
                                    2020-01-01
                                </td>

                                <!-- 애완동물 현황 모달창  -->
                                <td class="member_list_cell">
                                    <a data-bs-toggle="modal" href="#modalTarget-center" class="btn btn1">
                                        애완동물 현황
                                    </a>
                                    <div class="modal" id="modalTarget-center">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    김진석
                                                </div>
                                                <div class="modal-body">
                                                    <table class="member_table">
                                                        <tr>
                                                            <td class="member_table_head">
                                                                NO.
                                                            </td>
                                                            <td class="member_table_head">
                                                                이름
                                                            </td>
                                                            <td class="member_table_head">
                                                                종
                                                            </td>
                                                            <td class="member_table_head">
                                                                나이
                                                            </td>
                                                            <td class="member_table_head">
                                                                특이사항
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="member_table_head">
                                                                1
                                                            </td>
                                                            <td class="member_table_head">
                                                                팅팅이
                                                            </td>
                                                            <td class="member_table_head">
                                                                말티즈(견)
                                                            </td>
                                                            <td class="member_table_head">
                                                                2
                                                            </td>
                                                            <td class="member_table_head">
                                                                예방접종 필요
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button data-bs-dismiss="modal" class="btn btn1">
                                                        Close
                                                    </button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>

                                <!-- 수정/탈퇴버튼 -->

                                <td class="member_list_cell">
                                    <a data-bs-toggle="modal" href="#modalTarget-second" class="btn btn-primary">
                                        수정/탈퇴
                                    </a>
                                    <div class="modal" id="modalTarget-second">
                                        <div class="modal-dialog modal-dialog-centered modal-xl">
                                            <div class="modal-content">
                                                <div class="modal-header">김진석</div>
                                                <div class="modal-body">

                                                    <table class="member_table">
                                                        <tr>
                                                            <td class="member_table_head">
                                                                이름
                                                            </td>
                                                            <td class="member_table_head">
                                                                나이
                                                            </td>
                                                            <td class="member_table_head">
                                                                전화번호
                                                            </td>
                                                            <td class="member_table_head">
                                                                이메일주소
                                                            </td>
                                                            <td class="member_table_head">
                                                                탈퇴
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="member_table_head">
                                                                <input class="inputs" type="text" name="" id=""
                                                                    placeholder="김진석">
                                                            </td>
                                                            <td class="member_table_head">
                                                                <input class="inputs" type="text" name="" id=""
                                                                    placeholder="25">
                                                            </td>
                                                            <td class="member_table_head">
                                                                <input class="inputs" type="text" name="" id=""
                                                                    placeholder="010-1111-2222">
                                                            </td>
                                                            <td class="member_table_head">
                                                                <input class="inputs" type="text" name="" id=""
                                                                    placeholder="kimjs@go.kr">
                                                            </td>
                                                            <td class="member_table_head">
                                                                <form action="">
                                                                    <button class="btn-danger btn-sm"
                                                                        type="submit">탈퇴</button>
                                                                </form>
                                                            </td>
                                                        </tr>

                                                    </table>

                                                </div>
                                                <div class="modal-footer">
                                                    <button data-bs-dismiss="modal" class="btn btn1">
                                                        Close
                                                    </button>
                                                    <form action="">
                                                        <button class="btn btn-warning">
                                                            저장
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                </div>





        </div>
        </tbody>
        </table>

        <!-- page button -->

        <div class="container pagination mt-5 mb-5">
            <button class="page_button2">&lt;&lt;</button>
            <button class="page_button">&lt;</button>
            <button class="page_button">1</button>
            <button class="page_button">2</button>
            <button class="page_button">3</button>
            <button class="page_button">4</button>
            <button class="page_button">5</button>
            <button class="page_button">&gt;</button>
            <button class="page_button2">&gt;&gt;</button>
        </div>

        <%@ include file="../baekgu/footer.jsp" %>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </html>