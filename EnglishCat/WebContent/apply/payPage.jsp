<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<script>
IMP.init('imp51152500');
var amount =<%=request.getParameter("amount")%>;
var buyer_email = '<%=request.getParameter("buyer_email")%>';
var buyer_name = '<%=request.getParameter("buyer_name")%>';
var buyer_tel = '<%=request.getParameter("buyer_tel")%>';
var buyer_addr = '<%=request.getParameter("buyer_addr")%>';

		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명:결제테스트',
			amount : amount, //판매 가격
			buyer_email : buyer_email, //user_email
			buyer_name : buyer_name, //user_name
			buyer_tel : buyer_tel, //user_phone
			buyer_addr : buyer_addr, //user_address
			buyer_postcode : '123-456' //user_postcode
		}, function(rsp) {
			 if ( rsp.success ) {
				 var jsonData = {
			               "imp_uid" : rsp.imp_uid,
			               "merchant_uid" : rsp.merchant_uid,
			               "paid_amount" : rsp.paid_amount,
			               "apply_num" : rsp.apply_num
			            };
			            var result = JSON.stringify(jsonData); 
			        // jQuery로 HTTP 요청
			        jQuery.ajax({
			            url: "<%=request.getContextPath()%>/board?cmd=pay_complete", // 가맹점 서버
			            method: "POST",
			            headers: { "Content-Type": "application/json" },
			            dataType : "text",
			            data: result
			        }).done(function (data) {				        	
				});
			        var msg = '결제가 완료되었습니다.';
					/* msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num; */
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
			opener.location.href='<%=request.getContextPath()%>/member?cmd=member_payment'; 
		    window.close();

		});
	</script>
</body>
</html>