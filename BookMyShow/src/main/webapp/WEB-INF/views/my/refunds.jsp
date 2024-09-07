<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="../include/my/header.jsp"%>
<body id="board-body">
	<jsp:include page="../include/top.jsp" />
	<jsp:include page="../include/my/myticket.jsp" />

	<main id="board-main">
		<jsp:include page="../include/my/sidebar.jsp" />
		<section id="board-content">
			<div class="title">환불내역</div>

		<div class="booking-card">
    <div class="card-body">
        <div class="row h-100 no-gutters">
            <div class="col-md-3 h-100 d-flex align-items-center justify-content-start">
                <a href="<c:url value='/musical/detail/${musicalId}'/>" class="img-container">
                    <img src="<c:url value='/resources/images/poster/newopen1.jpg'/>"
                        class="poster-img" alt="뮤지컬 포스터">
                </a>
            </div>
            <div class="col-md-9 d-flex flex-column h-100 pl-3">
                <div class="booking-info mb-2">
                    <span class="status">환불완료</span>
                    <span class="booking-date">2024-09-01</span>
                </div>
                <div class="content-wrapper d-flex flex-column justify-content-between flex-grow-1">
                    <div class="row align-items-center no-gutters mb-2">
                        <div class="col-12">
                            <h5 class="card-title mb-0">
                                <a href="<c:url value='/musical/detail/${musicalId}'/>" class="card-title-link">옥탑방고양이</a>
                            </h5>
                        </div>
                    </div>
                    <div class="row align-items-center no-gutters mb-2">
                        <div class="col-8">
                            <p class="card-text mb-0 performance-date">2024-12-31</p>
                        </div>
                        <div class="col-4">
                       		 <a href="#" class="btn btn-outline-dark w-100">상세내역</a>
                        </div>
                    </div>
                    <div class="row align-items-center no-gutters">
                        <div class="col-12">
                            <p class="card-text mb-0 refund-amount">금액: 80,000원</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



		</section>
	</main>

	<jsp:include page="../include/bottom.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script>
</body>
</html>