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
                <title>My Pet MyPage</title>
            </head>

            <body>
                <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
                    <div>
                        <table class="">
                            <thead>
                                <tr>
                                    <th colspan="2"> 나의 애완동물 정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        애완동물 이름
                                    </th>
                                    <th>
                                        애완동물 나이
                                    </th>
                                    <th>
                                        애완동물 종
                                    </th>
                                </tr>

                                <% ArrayList resultList = (ArrayList) request.getAttribute("result");
                                for(int i = 0; i < resultList.size(); i++) {
                                    HashMap record = (HashMap) resultList.get(i); %>
                                    
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
                                    </tr>

                                    <% } %>
                            </tbody>
                        </table>

                    </div>
            </body>




            </html>