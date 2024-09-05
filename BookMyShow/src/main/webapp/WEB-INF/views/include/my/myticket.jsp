<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid my-ticket-header-container px-0">
    <div class="my-ticket-header">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item myticket-title">
                <div class="nav-link d-flex align-items-center">
                    <span class="my-ticket-title">MyTicket</span>
                </div>
            </li>
            <li class="nav-item">
                <div class="nav-link d-flex flex-column align-items-center">
                    <span>안녕하세요</span>
                    <span class="user-name">${userName}님</span>
                </div>
            </li>
            <li class="nav-item">
                <div class="nav-link d-flex flex-column align-items-center">
                    <span>나의 포인트</span>
                    <span class="my-point">${myPoint}</span>
                </div>
            </li>
            <li class="nav-item">
                <div class="nav-link d-flex flex-column align-items-center">
                    <span>이용가능 티켓</span>
                    <span class="usable-ticket-count">${myUsableTicketCount}</span>
                </div>
            </li>
        </ul>
    </div>
</div>