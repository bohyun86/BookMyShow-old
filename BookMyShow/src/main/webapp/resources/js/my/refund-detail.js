document.addEventListener('DOMContentLoaded', function() {
    // 환불 상태에 따른 추가 정보 표시
    const refundStatus = document.querySelector('.refund-status');
    const refundInfo = document.querySelector('.refund-info');
    if (refundStatus && refundInfo) {
        const status = refundStatus.textContent;
        switch(status) {
            case '환불완료':
            	refundInfo.innerHTML = '<p>환불이 완료되었습니다. 1-3일 내에 처리될 예정입니다.</p>';
                refundInfo.style.display = 'block';
                break;
            default:
                refundInfo.style.display = 'none';
        }
    }

    // 영수증 조회 기능
    const receiptButton = document.querySelector('.receipt-button');
    if (receiptButton) {
        receiptButton.addEventListener('click', function() {
            const paymentId = this.getAttribute('data-payment-id');
            // 영수증 조회 로직 구현
            console.log('환불 영수증 조회:', paymentId);
        });
    }

    // 환불 규정 상세 보기
    const refundPolicyButton = document.querySelector('.refund-policy-button');
    if (refundPolicyButton) {
        refundPolicyButton.addEventListener('click', function() {
            // 환불 규정 모달 또는 팝업 표시 로직
            console.log('환불 규정 상세 보기');
        });
    }
});