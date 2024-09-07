document.addEventListener('DOMContentLoaded', function() {
    // 주소 복사 기능
    const addressElement = document.querySelector('.detail-value[data-address]');
    if (addressElement) {
        addressElement.addEventListener('click', function() {
            const address = this.getAttribute('data-address');
            navigator.clipboard.writeText(address).then(() => {
                alert('주소가 클립보드에 복사되었습니다.');
            });
        });
    }

    // 영수증 조회 기능
    const receiptButton = document.querySelector('.receipt-button');
    if (receiptButton) {
        receiptButton.addEventListener('click', function() {
            const paymentId = this.getAttribute('data-payment-id');
            //영수증 조회 로직 구현
            console.log('영수증 조회:', paymentId);
        });
    }

    // 환불 신청 버튼 (공연 날짜 이전일 경우에만 활성화)
    const refundButton = document.querySelector('.refund-button');
    if (refundButton) {
        const performanceDate = new Date(refundButton.getAttribute('data-performance-date'));
        const today = new Date();
        if (performanceDate > today) {
            refundButton.disabled = false;
            refundButton.addEventListener('click', function() {
                if (confirm('정말로 환불을 신청하시겠습니까?')) {
                    // 환불 신청 로직 구현
                    console.log('환불 신청 처리');
                }
            });
        } else {
            refundButton.disabled = true;
        }
    }
});