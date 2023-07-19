<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/community.css">
    <title>My Pet Community</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/baekgu/header.jsp" %>
    <!-- /header -->
    <!-- body -->
    <div class="community main">
        <div class="container" style="display: inline-block; margin: 20px;">
            <div class="community board">
                <h3 class="tit">커뮤니티 게시판</h3>
                <p>반려동물 자랑, 병원, 사료 문의 등 자유로운 공간입니다 😄</p>
<!-- 검색창 및 검색 버튼 -->
                <div class="input-group mb-3">
                    <div class="dropdown_nav-item">
                        <button class="rounded-pill dropdown-toggle" data-bs-toggle="dropdown">분류</button>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item">자랑</li>
                            <li class="dropdown-item">병원</li>
                            <li class="dropdown-item">사료/간식</li>
                            <li class="dropdown-item">기타</li>
                        </ul>
                    </div>
                    <input type="text" title="검색어 입력" class="form-control rounded-pill" placeholder="" value="" id="keydownEnter" style="margin-left: 10px; margin-right: 10px;">
                    <button class="rounded-pill" type="button" onclick="" style="margin-left: 10px; margin-right: 10px;">
                        <img src="/images/search.png" alt="search image" width="23" height="23" style="background-color: transparent;">
                    </button>
                </div>
                <hr>
<!-- 게시글 테이블 보더 -->
                <div>
                    <table class="table">
                        <thead style="text-align: center;">
                            <tr>
                                <th class="noBrd">No</th>
                                <th class="noBrd">분류</th>
                                <th class="noBrd">제목</th>
                                <th class="noBrd">작성자</th>
                                <th class="noBrd">작성일</th>
                            </tr>
                        </thead>
<!-- 게시글 테이블 -->
                        <tbody id="ommunityTableBody">
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>1</td>
                                    <td>자랑</td>
                                    <td class="subject">
                                        <a href="" class="text-decoration-none">꽃챌린지</a>
                                    </td>
                                    <td>ba****</td>
                                    <td>2023-05-10</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>2</td>
                                    <td>병원</td>
                                    <td class="subject">
                                        <a href="" class="text-decoration-none">신도림역 근처 괜찮은 고양이 병원 있을까요?</a>
                                    </td>
                                    <td>ap***</td>
                                    <td>2023-05-15</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>3</td>
                                <td>병원</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">여의도역 근처에 고슴도치
                                        진료하는 병원 있을까요?</a>
                                </td>
                                <td>or****</td>
                                <td>2023-06-02</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>4</td>
                                <td>사료/간식</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">강아지 사료
                                        추천받아요</a>
                                </td>
                                <td>pi*****</td>
                                <td>2023-06-10</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>5</td>
                                <td>자랑</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">물속성 고양이</a>
                                </td>
                                <td>be****</td>
                                <td>2023-06-16</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>6</td>
                                <td>기타</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">펫박람회
                                        추천템!!</a>
                                </td>
                                <td>on****</td>
                                <td>2023-06-16</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>7</td>
                                    <td>사료/간식</td>
                                    <td class="subject">
                                        <a href="" class="text-decoration-none">앵무새 간식은 뭐가
                                            좋을까요?</a>
                                    </td>
                                    <td>an*****</td>
                                    <td>2023-06-20</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>8</td>
                                    <td>병원</td>
                                    <td class="subject">
                                        <a href="" class="text-decoration-none">홍제역 근처에 유기동물
                                            케어해주는 병원이 있을까요?</a>
                                    </td>
                                    <td>sa***</td>
                                    <td>2023-06-24</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>9</td>
                                <td>자랑</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">취미로 수제간식
                                        만들기</a>
                                </td>
                                <td>co****</td>
                                <td>2023-06-29</td>
                                </tr>
                            </form>
                            <form>
                                <input type="hidden" name="COMMUNITY_PETTALK_ID" value="" id="">
                                <tr>
                                    <td>10</td>
                                <td>기타</td>
                                <td class="subject">
                                    <a href="" class="text-decoration-none">제가 잘때 토끼가 자꾸
                                        머리카락을 먹는데 어떻게해야...??</a>
                                </td>
                                <td>ra****</td>
                                <td>2023-07-03</td>
                                </tr>
                            </form>
<!-- 페이지 넘버링 -->
                        </tbody>
                    </table>
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li style="width: 180px;"></li>
                            <li class="page-item"><a class="page-link" href="">First</a></li>
                            <li class="page-item"><a class="page-link" href="">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="">1</a></li>
                            <li class="page-item"><a class="page-link" href="">2</a></li>
                            <li class="page-item"><a class="page-link" href="">3</a></li>
                            <li class="page-item"><a class="page-link" href="">Next</a></li>
                            <li class="page-item"><a class="page-link" href="">Last</a></li>
                            <li style="width: 180px;"></li>
                            <li><a href="/main/community_write" class="page-link text-decoration-none" style="background-color: #0d6efd; color: white">글 작성</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- /body -->
</body>

<!-- footer -->
<%@ include file="/WEB-INF/views/baekgu/footer.jsp" %>
<!-- /footer -->

</html>