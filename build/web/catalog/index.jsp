<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<jsp:include page="/includes/column_left_catalog.jsp" />
<jsp:include page="/includes/sidebar2.jsp" flush="true" />

<!-- start the middle column -->

<!-- If necessary, this page could be generated from the database. -->


    
    <link rel="stylesheet" type="text/css" href="../styles/main.css">
    <h1>Danh mục</h1>  
<div class="maincontent">
         <ul class="product_list">
            
    <h2>Truyện Conan</h2>
    <a href="product/conan">Truyện Tham tử lừng danh Conan <br> <img src="../images/conan_h2.jpg" width="150" > </a>
         </ul>
    
  <ul class="product_list">
              <h2>Truyện Ngọc rồng</h2>  
              <a href="product/nr">Truyện Ngọc Rồng phân I<br><img src="../images/nr_h2.jpg" width="150" ></a>
  </ul>
    
 <ul class="product_list">
     <h2>Truyện Ngọc rồng</h2> 
        <a href="product/nr1">Truyện Ngọc Rồng Phần II  <img src="../images/nr1_h2.jpg" width="150" > </a>
 
   </ul>


      <ul class="product_list">
    <h2>Truyện Naruto</h2>
    <a href="product/na">Truyện Naruto với nhữung quái thú    <img src="../images/na_h2.jpg" width="150" > </a> 
      </ul>
    
      <ul class="product_list">
    <h2>Truyện Đoremon</h2>
    <a href="product/dro"> Truyện Đôremon phiêu lưu    <img src="../images/dro_h2.jpg" width="150" > </a> 
    
      </ul>
</div>
    
    
    
    <div>
        <c:if test="${3>1}">
        <c:forEach begin="1" end="3" var="i">
           <a href="#"> ${i} </a>
        </c:forEach>
            </c:if>
    </div>
        
  
<!-- end the middle column -->


<jsp:include page="/includes/footer1.jsp" />



