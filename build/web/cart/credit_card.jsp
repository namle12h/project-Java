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

<%-- Use the following left column instead after you configure a 
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>


<!-- begin middle column -->

<section class="cart">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../styles/main.css">
<h1>Nhập thông tin thẻ tín dụng của bạn</h1>

<form action="<c:url value='/order/completeOrder' />" method="post">
   <table>
   <tr> 
       <td><b>Phương thức thanh toán</b></td>
      <td>
          <select name="creditCardType" size="1">
            <option value="Visa">Visa</option>
            <option value="Mastercard">Mastercard</option>
            <option value="AmEx">American Express</option>
            <option value="AmEx">Thanh toán khi nhận hàng</option>
          </select>
      </td>
   </tr>
   <tr> 
      <td><b>Số thẻ</b></td>
      <td><input type="text" size="20" name="creditCardNumber" 
                 maxlength="25" ></td>
   </tr>
   <tr> 
      <td><b>Ngày hết hạn (mm / yyyy)</b></td>
      <td><select name="creditCardExpirationMonth">
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option> 
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option> 
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option> 
          </select>
          /
          <select name="creditCardExpirationYear">
            <c:forEach var="year" items="${creditCardYears}">
                <option value="${year}">${year}</option>
            </c:forEach>
          </select>
      </td>
   </tr>
   <tr>
      <td></td>
      <td><input type="submit" value="ĐẶT HÀNG"></td>
   </tr>
   </table>
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />


</div>
    </body>
</html>
