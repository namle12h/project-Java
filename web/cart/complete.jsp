<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
<html lang="en">      
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	
</head>
<body>
	<div class="wrapper">

</div>
    </body>
</html>


<jsp:include page="/includes/header1.jsp" />
<jsp:include page="/includes/menu.jsp" />
<jsp:include page="/includes/column_left_all.jsp" />
<%-- Use the following left column instead after you configure a 
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>

<!-- begin middle column -->

<section>

<h1>Cảm ơn , ${user.firstName}</h1>

<!-- store email address as a global variable and use EL to display it -->

<p>Đề nghị của bạn đã được chấp nhận. Chúng tôi sẽ bắt đầu xử lý đơn đặt hàng của bạn ngay lập tức. 
    Nếu bạn có bất kỳ câu hỏi nào về đơn đặt hàng của mình, vui lòng liên hệ với chúng tôi theo địa chỉ 
<a href="https://www.facebook.com/tanhoa11">https://www.facebook.com/tanhoa11</a></p>

</section>

<!-- end middle column -->


<jsp:include page="/includes/footer1.jsp" />