<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2024-09-03
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">관리자 페이지</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        MENU
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">메뉴 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                           data-target="#submenu-2" aria-controls="submenu-3">메뉴 2(collapse)</a>
                        <div id="submenu-2" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴1</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴2</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴3</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴4</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴5</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                           data-target="#submenu-3" aria-controls="submenu-3">메뉴 3(collapse)</a>
                        <div id="submenu-3" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴1</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴2</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴3</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴4</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">하위메뉴5</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
