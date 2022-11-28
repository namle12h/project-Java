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
<!-- begin middle column -->

<section class="cart">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../styles/main.css">
<h1>Giỏ Hàng</h1>
  <c:choose>
      <c:when test="${emptyCart != null}">
          <p>Giỏ hàng trống</p>
      </c:when>
      <c:otherwise>
        <table>
           <tr>
            <th>Số lượng</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Tổng tiền</th>
            <th>&nbsp;</th>
         </tr>
          <c:forEach var="item" items="${cart.items}">
            <tr class="cart_row">
              <td>
                <form action="<c:url value='/order/updateItem'/>" method="post">
                  <input type="hidden" name="productCode" 
                         value="<c:out value='${item.product.code}'/>">
                  <input type=text name="quantity" 
                         value="<c:out value='${item.quantity}'/>" id="quantity">
                  <input type="submit" value="Thêm">
                </form>                  
              </td>
              <td>${item.product.description}</td>
              <td>${product.priceCurrencyFormat} VNĐ</td>
              <td>${item.totalCurrencyFormat} VNĐ </td>
              <td>
                <form action="<c:url value='/order/removeItem'/>" method="post">
                  <input type="hidden" name="productCode" 
                         value="<c:out value='${item.product.code}'/>">
                  <input type="submit" value="Xoá">
                </form>                  
              </td>
            </tr>
          </c:forEach>
            <tr>
              <td colspan="2">
                
              </td>
              <td colspan="3">&nbsp;</td>
            </tr>
          </table>
      </c:otherwise>
  </c:choose>

<form action="<c:url value='/catalog'/>" method="get" id="float_left">
  <input type="submit" value="Tiếp tục mua sắm">
</form>
  
<c:if test="${emptyCart == null}">
    <!-- Connection is NOT SECURE.  For testing only. -->
    <form action="<c:url value='/order/checkUser'/>" method="post">
      <input type="submit" value="Thanh toán">
    </form>
    <!-- Connection is SECURE.  Before you can use it, you need to configure 
    a secure connection on your system as described in chapter 15, comment
    out the previous form, and remove the comments from the following form. -->
    <!--
    <form action="${absolutePathSecure}/order/checkUser" method="post">
      <input type="submit" value="Checkout">
    </form>
    -->
</c:if>
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />



	</div>
    </body>
</html>
