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
			<div class="title">예매내역</div>

			<div class="booking-card">
				<div class="card-body">
					<div class="row h-100 no-gutters">
						<div
							class="col-md-3 h-100 d-flex align-items-center justify-content-start">
							<a href="<c:url value='/musical/detail/${musicalId}'/>"
								class="img-container"> <img
								src="<c:url value='/resources/images/poster/newopen1.jpg'/>"
								class="poster-img" alt="뮤지컬 포스터">
							</a>
						</div>
						<div class="col-md-9 d-flex flex-column h-100 pl-3">
							<div class="booking-info mb-2">
								<span class="status">예매완료</span> <span class="booking-date">2024-09-01</span>
							</div>
							<div
								class="content-wrapper d-flex flex-column justify-content-between flex-grow-1">
								<div class="row align-items-center no-gutters mb-2">
									<div class="col-8 pr-2">
										<h5 class="card-title mb-0">
											<a href="<c:url value='/musical/detail/${musicalId}'/>"
												class="card-title-link">옥탑방고양이</a>
										</h5>
									</div>
									<div class="col-4 pl-2">
										<button class="btn btn-outline-secondary w-100"
											data-bs-toggle="modal" data-bs-target="#seatModal">좌석확인</button>
									</div>
								</div>
								<div class="row align-items-center no-gutters mb-2">
									<div class="col-8 pr-2">
										<p class="card-text mb-0">2024-12-31</p>
									</div>
									<div class="col-4 pl-2">
										<a href="#" class="btn btn-outline-dark w-100">상세내역</a>
									</div>
								</div>
								<div class="row align-items-center no-gutters">
									<div class="col-8 pr-2">
										<p class="card-text mb-0 ticket-amount">총 2매 / 80,000원</p>
									</div>
									<div class="col-4 pl-2">
										<c:set var="now" value="<%=new java.util.Date()%>" />
										<fmt:formatDate var="today" value="${now}"
											pattern="yyyy-MM-dd" />
										<c:choose>
											<c:when test="${today lt '2024-12-31'}">
												<button class="btn btn-outline-danger w-100">환불신청</button>
											</c:when>
											<c:otherwise>
												<a href="#" class="btn btn-outline-success w-100">리뷰작성</a>
											</c:otherwise>
										</c:choose>
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

	<!-- 좌석 확인 모달 -->
	<div class="modal fade" id="seatModal" tabindex="-1"
		aria-labelledby="seatModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="seatModalLabel">좌석 정보</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- 여기에 좌석 정보를 표시 -->
					<ul>
						<li>A열 10번</li>
						<li>A열 11번</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script>
</body>
</html>