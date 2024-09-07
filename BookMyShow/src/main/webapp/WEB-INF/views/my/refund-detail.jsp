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
			<div class="title">환불 상세내역</div>
			<div class="refund-detail-card">
				<h2>${refund.booking.musical.title}</h2>
				<div class="detail-row">
					<span class="detail-label">예매상태</span> <span class="detail-value">${refund.status}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">옵션</span> <span class="detail-value">
						<fmt:formatDate value="${refund.booking.musical.startDate}"
							pattern="M.d[E] HH:mm" /> ${refund.booking.ticketCount}인권 <fmt:formatNumber
							value="${refund.booking.totalAmount / refund.booking.ticketCount}"
							type="currency" currencySymbol="₩" /> *
						${refund.booking.ticketCount}매 = <fmt:formatNumber
							value="${refund.booking.totalAmount}" type="currency"
							currencySymbol="₩" />
					</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">예매번호</span> <span class="detail-value">${refund.booking.bookingId}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제금액</span> <span class="detail-value"><fmt:formatNumber
							value="${refund.booking.totalAmount}" type="currency"
							currencySymbol="₩" /></span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제수단</span> <span class="detail-value">${refund.booking.payment.paymentMethod}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">결제일시</span> <span class="detail-value"><fmt:formatDate
							value="${refund.booking.payment.paymentDate}"
							pattern="yyyy-MM-dd HH:mm:ss" /></span>
				</div>
				<div class="detail-row">
					<span class="detail-label">환불규정</span> <span class="detail-value">${refund.refundPolicy}</span>
				</div>
				<div class="detail-row">
					<span class="detail-label">공제금액</span> <span class="detail-value"><fmt:formatNumber
							value="${refund.deductionAmount}" type="currency"
							currencySymbol="₩" /></span>
				</div>
				<div class="detail-row">
					<span class="detail-label">환불금액</span> <span class="detail-value"><fmt:formatNumber
							value="${refund.refundAmount}" type="currency" currencySymbol="₩" /></span>
				</div>
				<div class="refund-info">
					<p>· 환불금액에 대한 결제 취소가 완료되었습니다.</p>
					<p>· 세부 결제수단에 따라 환불 완료까지 영업일 기준 3~5일 가량 소요될 수 있습니다.</p>
					<p>· 포인트로 결제한 경우 동일한 포인트로 환불됩니다.</p>
					<p>· 세부사항은 결제 수단의 이용 내역을 확인해주세요.</p>
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
		src="${pageContext.request.contextPath}/resources/js/refund-detail.js"></script>
</body>
</html>