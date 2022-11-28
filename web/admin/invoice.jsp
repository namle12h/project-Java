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
<jsp:include page="/includes/column_left_admin.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- begin middle column -->

<section id="admin">
    <link rel="stylesheet" type="text/css" href="../styles/main.css">
<h1>Hóa đơn của khách hàng</h1>

<table>
  <tr>
    <td><b>Ngày</b></td>
    <td>${invoice.invoiceDate}</td>
    <td></td>
  </tr>
  <tr>
    <td><b>Gửi tới</b></td>
    <td>${invoice.user.addressHTMLFormat}</td>
    <td></td>
  </tr>
  <tr><td colspan="3"><hr></td></tr>
  <tr>
    <td><b>Số lượng</b></td>
    <td><b>Description</b></td>
    <td><b>Price</b></td>
  </tr>
  
  <c:forEach var="item" items="${invoice.lineItems}">
  <tr>
    <td>${item.quantity}</td>
    <td>${item.product.description} VNĐ </td>
    <td>${item.totalCurrencyFormat} VNĐ </td>
  </tr>
  </c:forEach>

  <tr><td colspan="3"><hr></td></tr>
  <tr>
    <td><b>Tổng tiền</b></td>
    <td></td>
    <td><p>${invoice.invoiceTotalCurrencyFormat} VNĐ </td>
  </tr>      
</table>

<label>Thông tin thanh toán:</label>
<span>${invoice.user.creditCardType}: ${invoice.user.creditCardNumber} 
    (${invoice.user.creditCardExpirationDate})</span><br>
<label>Email Address</label>
<span>${invoice.user.email}</span><br>

<form action="processInvoice" method="post">
  <input type="submit" value="Xử lý hóa đơn">
</form>
<form action="displayInvoices" method="post">
  <input type="submit" value="Xem hóa đơn chưa xử lý">
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />

</div>
    </body>
</html>
