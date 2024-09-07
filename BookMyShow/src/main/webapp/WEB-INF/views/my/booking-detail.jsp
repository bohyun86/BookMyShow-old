<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/my/header.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/css/my/detail.css'/>">
</head>
<body id="board-body">
	<jsp:include page="../include/top.jsp" />
	<jsp:include page="../include/my/myticket.jsp" />

	<main id="board-main">
		<jsp:include page="../include/my/sidebar.jsp" />
		<section id="board-content">
			<div class="title">예매 상세내역</div>
			<div class="booking-detail-card">
				<h2>제목${booking.musical.title}</h2>
				<div class="detail-row">
					<span class="detail-label">예매상태</span> <span class="detail-value">${booking.status}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">장소</span> <span class="detail-value">${booking.musical.venue.venueName}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">주소</span> <span class="detail-value">${booking.musical.venue.address}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">연락처</span> <span class="detail-value">${booking.musical.venue.phoneNumber}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">예매옵션</span> <span class="detail-value">
						<fmt:formatDate value="${booking.musical.startDate}"
							pattern="M.d[E] HH:mm" /> ${booking.ticketCount}인권 <fmt:formatNumber
							value="${booking.totalAmount / booking.ticketCount}"
							type="currency" currencySymbol="₩" /> * ${booking.ticketCount}매 =
						<fmt:formatNumber value="${booking.totalAmount}" type="currency"
							currencySymbol="₩" />
					</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">예매번호</span> <span class="detail-value">${booking.bookingId}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">이용자</span> <span class="detail-value">${booking.user.name}(${booking.user.phoneNumber})</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제금액</span> <span class="detail-value"><fmt:formatNumber
							value="${booking.totalAmount}" type="currency" currencySymbol="₩" /></span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제수단</span> <span class="detail-value">${booking.payment.paymentMethod}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제일시</span> <span class="detail-value"><fmt:formatDate
							value="${booking.payment.paymentDate}"
							pattern="yyyy-MM-dd HH:mm:ss" /></span>
				</div>
				<div class="detail-row">
					<span class="detail-label">환불기한</span> <span class="detail-value">이용
						1일 전 자정까지 신청 가능</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">관람연령</span> <span class="detail-value">${booking.musical.ageLimit}세
						이상</span>
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
		src="${pageContext.request.contextPath}/resources/js/booking-detail.js"></script>
</body>
</html>