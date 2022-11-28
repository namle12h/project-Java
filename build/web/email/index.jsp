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
<jsp:include page="/includes/column_left_email.jsp" />
<jsp:include page="/includes/sidebar2.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <link rel="stylesheet" type="text/css" href="../styles/main.css">
<h1> ĐĂNG KÝ EMAIL</h1>
<p> Chúng tôi sẽ gửi cho bạn thông báo về các bản phát hành mới và ưu đãi đặc biệt. </p>

<p><i>${message}</i></p>

<form action="<c:url value='/user/subscribeToEmail'/>" method="post">
    <label>Email</label>
    <input type="email" name="email" required><br>
    <label>Họ và Tên</label>
    <input type="text" name="firstName" required><br>      
    <label>&nbsp;</label>
    <input type="submit" value="ĐĂNG KÝ" id="submit">
</form>

</section>


<jsp:include page="/includes/footer1.jsp" />


