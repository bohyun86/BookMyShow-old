<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="../include/my/header.jsp"%>
<body id="board-body">
    <jsp:include page="../include/top.jsp"/>
    <jsp:include page="../include/my/myticket.jsp"/>
    
    <main class="row d-flex justify-content-between align-items-center" id="board-main">
        <jsp:include page="../include/my/sidebar.jsp"/>
        <section class="h-100" id="board-content">
            <div class="title">
                예매내역
            </div>
<!--             <div class="card w-100"> -->
<!--   <div class="card-header"> -->
<!--     <div class="d-flex justify-content-between align-items-center"> -->
<!--       <span>상태</span> -->
<!--       <span>날짜</span> -->
<!--     </div> -->
<!--     <h5 class="card-title mt-2">뮤지컬 제목</h5> -->
<!--     <p class="card-text">공연 날짜: 2023년 9월 15일</p> -->
<!--   </div> -->
<!--   <div class="card-body d-flex"> -->
<!--     <img src="musical_poster.jpg" class="img-fluid me-3" style="width: 150px; height: auto;" alt="뮤지컬 포스터"> -->
<!--     <div class="d-flex flex-column justify-content-between"> -->
<!--       <div> -->
<!--         <p class="card-text">공연장: 세종문화회관</p> -->
<!--         <p class="card-text">좌석: A열 15번</p> -->
<!--       </div> -->
<!--       <div class="d-flex justify-content-between align-items-center"> -->
<!--         <p class="card-text fw-bold">가격: 80,000원</p> -->
<!--         <div> -->
<!--           <button class="btn btn-outline-primary btn-sm me-2">상세정보</button> -->
<!--           <button class="btn btn-primary btn-sm">예매하기</button> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->
        </section>
    </main>

    <jsp:include page="../include/bottom.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script>
</body>
</html>