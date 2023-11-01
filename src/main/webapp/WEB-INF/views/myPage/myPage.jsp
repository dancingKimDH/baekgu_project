<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
        <%@ page import="java.util.HashMap, java.util.ArrayList" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <!-- Bootstrap CSS -->
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
                <link rel="stylesheet" href="/css/main.css">
                <link rel="stylesheet" href="/css/myPage.css">

                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <title>My Pet MyPage</title>
            </head>

            <body>
                <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
                    <div class="table_box">

                        <sec:authorize access="isAuthenticated()">
                            <input type="hidden" name="userId" id="userId" value="${userDetailsBean.username}">
                    
                        <table class="main_table">
                            <thead class="headline">
                                <tr>
                                    <th colspan="5"> 나의 애완동물 정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="">
                                    <th>
                                        애완동물 이름
                                    </th>
                                    <th>
                                        애완동물 나이
                                    </th>
                                    <th>
                                        애완동물 종
                                    </th>
                                    <th>
                                        애완동물 성별
                                    </th>
                                    <th>
                                        삭제
                                    </th>
                                </tr>

                                <% ArrayList resultList=(ArrayList) request.getAttribute("result"); for(int i=0; i <
                                    resultList.size(); i++) { HashMap record=(HashMap) resultList.get(i); %>

                                    <tr>
                                        <td>
                                            <%= record.get("PETNAME") %>
                                        </td>
                                        <td>
                                            <%= record.get("PETAGE") %>
                                        </td>
                                        <td>
                                            <%= record.get("SPECIES_NAME") %>
                                        </td>
                                        <td>
                                            <%= record.get("PETGENDER_NAME") %>
                                        </td>
                                        <td>
                                            <form action="/deletePet/{petId}" method="post">
                                                <button class="delete_btn" type="submit">
                                                    <input type="hidden" name="userId" id="userId" value="${userDetailsBean.username}">
                                                    <input type="hidden" name="petId" id="petId" value="<%= record.get("PETINF_ID") %>">
                                                    ❌
                                                </button>
                                            </form>
                                        </td>
                                    </tr>

                                    <% } %>


                                        <tr>
                                            <td>
                                                <input type="text" name="animal_name" id="animal_name"
                                                    placeholder="애완동물 이름" value="<%= (request.getAttribute("animal_name") != null) ? request.getAttribute("animal_name") : "애완동물 이름" %>">
                                            </td>
                                            <td>
                                                <input type="text" name="animal_age" id="animal_age"
                                                    placeholder="0년 0개월" value="<%= (request.getAttribute("animal_age") != null) ? request.getAttribute("animal_age") : "0년 0개월" %>">
                                            </td>
                                            <td>
                                                <select name="animal_type" id="animal_type">
                                                    <option value="PS-01">개(강아지)</option>
                                                    <option value="PS-02">고양이</option>
                                                    <option value="PS-03">햄스터</option>
                                                    <option value="PS-04">슈가글라이더</option>
                                                    <option value="PS-05">고슴도치</option>
                                                    <option value="PS-06">앵무새</option>
                                                    <option value="PS-07">기니피그</option>
                                                    <option value="PS-08">카멜레온</option>
                                                    <option value="PS-09">다람쥐</option>
                                                    <option value="PS-10">도마뱀</option>
                                                    <option value="PS-11">거북이</option>
                                                    <option value="PS-12">미어캣</option>
                                                    <option value="PS-13">오리</option>
                                                    <option value="PS-14">친칠라</option>
                                                    <option value="PS-15">라쿤</option>
                                                    <option value="PS-16">토끼</option>
                                                </select>
                                            </td>
                                            <td name="" id="" colspan="2">
                                                <select name="animal_gen" id="animal_gen" >
                                                    <option value="PG-01">수컷</option>
                                                    <option value="PG-02">암컷</option>
                                                </select>
                                            </td>
                                        </tr>

                            </tbody>
                        </table>
                    </sec:authorize>

                    </div>
                    <div class="button_box" >
                        <button class="w-btn-green-outline" id="animal_btn">
                            신규동물 등록
                        </button>
                    </div>
            </body>
            <script src="/js/myNewPet.js"></script>



            </html>