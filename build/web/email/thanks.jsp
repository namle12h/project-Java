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



<jsp:include page="/includes/header1.jsp" />
<jsp:include page="/includes/menu.jsp" />
<jsp:include page="/includes/column_left_all.jsp" />
<jsp:include page="/includes/sidebar2.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
<section>
   
<h1> Cảm ơn bạn đã tham gia danh sách email của chúng tôi </h1>
<p> Đây là thông tin của bạn gửi cho chúng tôi</p>

<label class="no_pad_top">Email :</label>
<span>${user.email}</span><br>
<label class="no_pad_top">Họ và Tên :</label>
<span>${user.firstName}</span><br>

</section>


<jsp:include page="/includes/footer1.jsp" />

</div>
    </body>
</html>

