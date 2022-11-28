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
<%-- Use the following left column instead after you configure a 
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>

<!-- begin middle column -->

<section class="cart">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../styles/main.css">
<h1>Nhập thông tin liên hệ của bạn</h1>

<form action="<c:url value='/order/processUser' />" method=post>
    <p id="required"><span class="required"></span></p>
    
      <label>First Name</label>
    <input type="text" name="firstName"  maxlength=20 
               value="${user.firstName}" required>
    <p class="required">*</p><br>
    
    <label>Last Name</label>
    <input type="text" name="lastName" value="${user.lastName}" required>
    <p class="required">*</p><br>
    
    <label>Email</label>
    <input type="email" name="email" value="${user.email}" required>
    <p class="required">*</p><br>
    
    <label>Điện Thoại</label>
    <input type="text" name="companyName" value="${user.companyName}">
    <p class="required">&nbsp;</p><br>
    
    <label>Địa chỉ</label>
    <input type="text" name="address1" value="${user.address1}" required> 
    <p class="required">*</p><br>
     
    <label>Zip Code</label>
    <input type="text" name="zip" value="${user.zip}" required>
    <p class="required">*</p><br>
    
    <label>Quốc Gia</label>
    <input type="text" name="country" value="${user.country}" required> 
    <p class="required">*</p><br>
    
    <label>&nbsp;</label>
    <input type="submit" value="Tiếp tục">
</form>
    
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />


</div>
    </body>
</html>
