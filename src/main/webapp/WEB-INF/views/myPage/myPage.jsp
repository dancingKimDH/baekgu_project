<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
            <link rel="stylesheet" href="/css/main.css">
            <link rel="stylesheet" href="/css/myPage.css">
            <title>My Pet MyPage</title>
        </head>

        <body>
            <!-- header -->
            <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
                <!-- /header -->
                <!-- body -->
                <div>

                    <div>
                        <form action="">

                        </form>
                    </div>

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

                                </tr>
                            </div>



                            <tr>
                                <td>

                                </td>
                                <td>

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


                    </div>
                    <!-- <div class="button_box">
                        <form action="/main/myNewPet">
                            <button class="btn2" type="submit">신규 동물 등록하기</button>
                        </form>
                        <form action="/main/statistics">
                            <button class="btn2" type="submit">통계 보기</button>
                        </form>
                    </div> -->
                    <!-- /body -->
        </body>

        <footer>
            <%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
        </footer>

            <!-- /footer -->

        </html>