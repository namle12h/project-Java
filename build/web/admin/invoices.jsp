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

<h1>Hóa đơn được xử lý:</h1>

<c:if test="${unprocessedInvoices == null}">
    <p>There are no invoices to process.</p>
</c:if>


<c:if test="${unprocessedInvoices != null}">
<table>

<tr>
  <td></td>
<td> <b> Tên khách hàng </b> </td>
  <td> <b> Ngày lập hóa đơn </b> </td>
</tr>


<c:forEach var="invoice" items="${unprocessedInvoices}">
<tr>
  <td>
    <a href="displayInvoice?invoiceNumber=${invoice.invoiceNumber}">Click to View</a>
  </td>
  <td>${invoice.user.firstName} ${invoice.user.lastName}</td>
  <td>${invoice.invoiceDateDefaultFormat}</td>
</tr>
</c:forEach>

</table>
</c:if>

<form action="<c:url value='/admin'/>" method="post">
    <input type=submit value="Trở lại Menu">
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />


</div>
    </body>
</html>
