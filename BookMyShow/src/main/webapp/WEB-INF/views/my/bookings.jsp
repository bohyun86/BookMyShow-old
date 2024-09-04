<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2024-09-02
  Time: 오후 4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">

    <title>예매하다 - 원하는 뮤지컬을 바로!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
    <!-- Bootstrap icons  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <style>
        #extra-info {
            background-color: white;
        }
    </style>
</head>
<body id="board-body">
<jsp:include page="../include/top.jsp"/>

<main class="row d-flex justify-content-between align-items-center" id="board-main">
    <aside class="h-100">
        <div class="title">
            마이티켓
        </div>
        <div>
            <ul class="list-group list-group-flush mt-3">
                <li class="list-group-item "><a>예매내역</a></li>
                <li class="list-group-item "><a>취소/환불내역</a></li>
                <li class="list-group-item "><a>나의 이용후기</a></li>
                <li class="list-group-item "><a>나의 포인트</a></li>
                <li class="list-group-item "><a>쿠폰 등록</a></li>
                <li class="list-group-item "><a>회원정보 수정</a></li>
                <li class="list-group-item "><a>공지사항</a></li>
                <li class="list-group-item "><a>자주묻는질문</a></li>
                <li class="list-group-item "><a>1:1문의</a></li>
            </ul>
        </div>
    </aside>
    <section class="h-100" id="board-content">
        <div class="title">
            내용
        </div>
    </section>
</main>


<jsp:include page="../include/bottom.jsp"/>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script>
</body>
</html>