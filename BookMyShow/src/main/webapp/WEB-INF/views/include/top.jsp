<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2024-09-02
  Time: 오후 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="w-100 bg-white sticky-top border-bottom">
    <div class="d-flex row p-0" id="sticky">
        <ul class="nav justify-content-end pt-3" id="top-nav">
            <li class="nav-item" >
                <a class="nav-link text-black active" href="${pageContext.request.contextPath}/login/">로그인</a>
            </li>
<%--          <li class="nav-item">
           <form action="${pageContext.request.contextPath}/logout" method="post">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              <input type="submit" class="nav-link text-black" value="로그아웃">
          </form>
           </li>--%>
            <li class="nav-item">
                <a class="nav-link text-black" href="#">회원가입</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-black" id="cs-dropdown" href="${pageContext.request.contextPath}/support/faq">고객센터</a>
                <!-- Dropdown menu -->
                <div class="dropdown-menu shadow border-0 " id="cs-dropdown-menu">
                    <div class="h-100 d-flex row justify-content-between align-items-center">
                        <div class="w-100"><a class="text-decoration-none text-dark" href="#">공지사항</a></div>
                        <div><a class="text-decoration-none text-dark" href="#">FAQ</a></div>
                        <div><a class="text-decoration-none text-dark" href="#">1:1문의</a></div>
                    </div>
                </div>
            </li>
        </ul>
        <ul class="nav justify-content-start align-items-center">
            <li class="nav-item"><a class="navbar-brand ms-3 fs-4 fst-italic" href="${pageContext.request.contextPath}/main/">예매하다</a></li>
            <li class="nav-item ms-5">
                <form class="d-flex border border-2 border-gray rounded-5 px-2">
                    <input class="bg-transparent text-gray border-0" aria-label="Search">
                    <i class="bi bi-search fs-5 p-2"></i>
                </form>
            </li>
        </ul>
        <ul class="nav justify-content-between px-3 mt-3">
            <li class="nav-item col-6">
                <a class="nav-link text-black fw-bold fs-6 px-0" href="#">뮤지컬</a>
            </li>
            <li class="nav-item d-flex border-start ps-3">
                <a class="nav-link text-black fw-bold fs-6" href="#">타임세일</a>
                <a class="nav-link text-black fw-bold fs-6" href="#">이벤트</a>
            </li>
        </ul>
    </div>
</header>