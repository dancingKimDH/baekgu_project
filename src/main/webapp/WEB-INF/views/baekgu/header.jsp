<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<sec:authentication property="principal" var="userDetailsBean" />
<form>
<div style="background-color: #b3d9eb;">
    <sec:authorize access="isAnonymous()">
    <div class="loginLocation">
        <a class="loginText nav-link" href="/loginPage">로그인</a>
        <a class="loginText nav-link" href="/main/register">회원가입</a>
    </div>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
    <div class="loginLocation">
        User ID : ${userDetailsBean.username}
        Name : ${userDetailsBean.memberName}
        <a class="loginText nav-link" href="/main">로그아웃</a>
    </div>
    </sec:authorize>
    
    <div style="text-align: center;">
        <ul class="list-unstyled m-25" style="display: inline-block;">
            <li style="display: inline-block;">
                <a href="/main">
                    <img src="/images/logo.png" alt="logo image" width="70px" height="70px">
                    <hr>
                </a>
                <div style="text-align: center; margin-top: 10px; margin-bottom: 10px;">
                    <ul class="list-unstyled m-0" style="display: inline-block;">
                        <li style="display: inline-block;">
                            <a href="/main/introduce" class="headerAddress text-decoration-none ps-3"
                                style="font-size: 1.3rem;">사이트 소개</a>
                        </li>
                        <li style="display: inline-block;">
                            <a href="/main/guide" class="headerAddress text-decoration-none ps-3"
                                style="font-size: 1.3rem;">다이어리 사용안내</a>
                        </li>
                        <li style="display: inline-block;">
                            <a href="/community/communityList" class="headerAddress text-decoration-none ps-3"
                                style="font-size: 1.3rem;">커뮤니티</a>
                        </li>
                        <li style="display: inline-block;">
                            <a href="/main/myPage" onclick="redirectToPage(); return false;"
                                class="headerAddress text-decoration-none ps-3" style="font-size: 1.3rem;">마이페이지</a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>
</form>