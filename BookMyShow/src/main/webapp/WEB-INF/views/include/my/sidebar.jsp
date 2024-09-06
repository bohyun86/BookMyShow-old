<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<aside class="h-100">
	<div class="title">마이티켓</div>
	<div>
		<ul class="list-group list-group-flush mt-3">
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/bookings" class="${pageContext.request.servletPath == '/WEB-INF/views/my/bookings.jsp'
				? 'text-danger' : ''}">예매내역</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/refunds"	class="${pageContext.request.servletPath == '/WEB-INF/views/my/refunds.jsp'
				? 'text-danger' : ''}">취소/환불내역</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/reviews"	class="${pageContext.request.servletPath == '/WEB-INF/views/my/reviews.jsp'
				? 'text-danger' : ''}">나의 이용후기</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/points"	class="${pageContext.request.servletPath == '/WEB-INF/views/my/points.jsp'
				? 'text-danger' : ''}">나의 포인트</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/counpon-redeem"	class="${pageContext.request.servletPath == '/WEB-INF/views/my/counpon-redeem.jsp'
				? 'text-danger' : ''}">쿠폰 등록</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/my/profile-edit"	class="${pageContext.request.servletPath == '/WEB-INF/views/my/profile-edit.jsp'
				? 'text-danger' : ''}">회원정보 수정</a></li>
			
<!-- 			support url 변경시 변경 -->
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/support/qna"	class="${pageContext.request.servletPath == '/WEB-INF/views/support/qna.jsp'
				? 'text-danger' : ''}">공지사항</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/support/qna"	class="${pageContext.request.servletPath == '/WEB-INF/views/support/qna.jsp'
				? 'text-danger' : ''}">자주묻는질문</a></li>
			<li class="list-group-item">
				<a href="${pageContext.request.contextPath}/support/qna"	class="${pageContext.request.servletPath == '/WEB-INF/views/support/qna.jsp'
				? 'text-danger' : ''}">1:1문의</a></li>
		</ul>
	</div>
</aside>