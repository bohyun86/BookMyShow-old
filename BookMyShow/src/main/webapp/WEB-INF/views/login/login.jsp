<%--
  Created by IntelliJ IDEA.
  User: ibedr
  Date: 2024-09-02
  Time: 오후 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
</head>
<body class="bg-opacity-50">
<div class="w-100 min-vh-100 d-flex justify-content-center align-items-center bg-white" >
    <form class="p-5 shadow" id="login-form">
        <h2 class="pb-3 text-center mt-5 mb-3"><a href="${pageContext.request.contextPath}/main">예매하다</a></h2>
        <div class="form-group pb-2 d-flex row align-items-stretch">
            <div class="input-group my-2 px-0" id="id-input" >
                <div class="input-group-prepend">
                    <span class="input-group-text border-0 bg-white">
                        <i class="bi bi-person"></i>
                    </span>
                </div>
                <input type="text" class="form-control border-0" placeholder="아이디">
            </div>
            <div class="input-group my-2 px-0" id="pass-input">
                <div class="input-group-prepend">
                    <span class="input-group-text border-0 bg-white">
                        <i class="bi bi-lock"></i>
                    </span>
                </div>
                <input type="text" class="form-control border-0" placeholder="비밀번호">
            </div>
            <button type="submit" class="btn btn-primary w-100 fw-bolder my-2" id="login-button">로그인</button>
        </div>
        <div id="login-submenu" class="d-flex justify-content-center">
            <a href="#" class="text-decoration-none">아이디 찾기</a>
            <a href="#" class="text-decoration-none">비밀번호 찾기</a>
            <a href="#" class="text-decoration-none">회원가입</a>
        </div>



        <div class="text-center" id="simple-login">
            <small class="fs-6 fw-bolder">간편 로그인</small>
        </div>

        <div class="text-center" id="simple-login-img">
            <button type="submit" class="btn btn-outline-none py-3" >
                <img src="${pageContext.request.contextPath}/resources/images/login/circle_naver.png" alt="naver" class="icon">
            </button>
            <button type="submit" class="btn btn-outline-none py-3" >
                <img src="${pageContext.request.contextPath}/resources/images/login/circle_kakao.png" alt="kakao" class="icon">
            </button>
        </div>

        <div class="text-center mt-5" id="login-problem">
            <a href="#" class="fs-6 fw-bolder">※ 회원가입/로그인에 문제가 있어요!></a>
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>