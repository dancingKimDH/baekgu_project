<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/statistics.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <!-- 차트 -->
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var chart = new Chart(ctx, {
            // 챠트 종류를 선택
            type: 'line',

            // 챠트를 그릴 데이타
            data:
            {
                labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                datasets:
                    [{
                        label: '몸무게',
                        backgroundColor: 'transparent',
                        borderColor: 'red',
                        data: [0, 10, 5, 2, 20, 30, 45]
                    }]
            },
            // 옵션
            options: {}
        });
    </script>
    <!-- 차트 링크 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <title>My Pet Statistics</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <!-- body -->
    <div class="mainImage my-5">
        <img src="../images/statistics.png" alt="" style="width: 5%; height: 5%;">
        <div class="container mx-5">
            <table class="table table-bordered table-hover">
                <tr class="table-info">
                    <th>이름</th>
                    <th>성별</th>
                    <th>나이</th>
                    <th>종</th>
                    <th>예방접종 유무</th>
                </tr>
                <tr>
                    <td>정지운</td>
                    <td>수컷</td>
                    <td>26</td>
                    <td>사람</td>
                    <td>O</td>
                </tr>
            </table>
            <div class="container">
                <canvas id="myChart"></canvas>
            </div>
            <!-- /body -->
</body>

<!-- footer -->
<%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
<!-- /footer -->

</html>