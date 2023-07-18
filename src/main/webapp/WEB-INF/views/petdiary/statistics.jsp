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
                마이 펫 통계
            </h1>
            <ul class="main_navbar mt-5">
                <li> <img src="../images/logoimage.png" alt="" class="logo"></li>
                <li> <a href="../mainpage.html" class="a">메인화면</a></li>
                <li> <a href="./my_pet_manage.html" class="a">마이펫 관리</a></li>
                <li> <a href="../login.html" class="a">로그인/회원가입</a></li>
                <li> <a href="../community/community.html" class="a">커뮤니티</a></li>
            </ul>
        </nav>
    </div>
    <div class="mainbody">
        <div class="stat_title">
            <div class="stat_title_guide">
                통계를 확인하고자 하는 애완동물을 <br> 선택해 주세요
            </div>
            <div>
                <form action="">
                    <select name="" id="">
                        <option value="" selected>모두 보기</option>
                        <option value="">팅팅이</option>
                        <option value="">통통이</option>
                    </select>
                    <button type="submit">통계 보기</button>
                </form>
            </div>
            <div>

            </div>
        </div>
        <div class="stat1">
            <table class="stat1table">
                <tr>
                    <td class="td">
                        이름
                    </td>
                    <td class="td">
                        최근 7일 간 사료 섭취량
                    </td>
                    <td class="td">
                        최근 몸무게 평균
                    </td>
                    <td class="td">
                        최근 질병 이력
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        통통이
                    </td>
                    <td class="td">
                        750g
                    </td>
                    <td class="td">
                        5.8kg
                    </td>
                    <td class="td">
                        -
                    </td>
                    
                </tr>
                <tr>
                    <td class="td">
                        팅팅이
                    </td>
                    <td class="td">
                        150g
                    </td>
                    <td class="td">
                        1.2kg
                    </td>
                    <td class="td">
                        -
                    </td>
                </tr>
            </table>

            <img src="../images/logoimage.png" width="150px" height="150px" alt="">
        </div>
        <div class="stat2">this is the second stat</div>
        <div class="stat_footer"></div>
    </div>

    <div>
        <div style="text-align: left;">
            <ul class="list-unstyled m-0">
              <li class="pt-1">
                <span class="pe-3">대표자: TEAM BAEKGU</span>
                <span>주소: 대한민국 서울시</span>
              </li>
              <li class="pt-1">
                <span>법인명: (주) BAEKGU</span>
                <span>사업자 등록정보: ABC-123 </span>
              </li>
              <li class="pt-1">
                TEL: 080-123-4567 (업무시간: 09:00-18:00 월~금) 주말 및 공휴일 휴무
                &nbsp;
                <span>E-MAIL: baekgu@internet.co.kr</span>
              </li>
            </ul>
          </div>
    </div>
</body>

</html>