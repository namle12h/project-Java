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
<link rel="stylesheet" type="text/css" href="../styles/main.css">
<section class="cart">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Hóa đơn của bạn</h1>

<table>
  <tr>
    <th>Ngày</th>
    <td>${invoice.invoiceDateDefaultFormat}</td>
    <td></td>
  </tr>
  <tr>
      <th class="top">Gửi Tới</th>
    <td>${user.addressHTMLFormat}</td>
    <td></td>
  </tr>
  <tr>
      <td colspan="3"><hr></td>
  </tr>
  <tr>
      <th>Số lượng</th>
      <th>Tên sản phẩm</th>
      <th>Giá</th>
  </tr>

  <c:forEach var="item" items="${invoice.lineItems}">
  <tr>
    <td>${item.quantity}</td>
    <td>${item.product.description}</td>
    <td>${item.totalCurrencyFormat} VNĐ</td>
  </tr>
  </c:forEach>

  <tr>
    <th>Tổng tiền:</th>
    <td></td>
    <td>${invoice.invoiceTotalCurrencyFormat} VNĐ</td>
  </tr>
</table>

<form action="<c:url value='/order/displayUser' />" method="post" id="float_left">
     <input type="submit" value="Thay đổi địa chỉ">
</form>

<form action="<c:url value='/order/displayCreditCard' />" method="post">
     <input type="submit" value="Tiếp tục">
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />