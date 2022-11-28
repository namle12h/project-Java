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
<h1>Admin Menu</h1>

<!-- these Form tags don't force a secure connection -->
<form action="<c:url value='/adminController/displayInvoices'/>" method="post">
   <input type="submit" value="Xử lý hóa đơn" class="left_margin">
</form>
<form action="reports.jsp" method="post">
    <input type="submit" value="Hiển thị báo cáo" class="left_margin">
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />


</div>
    </body>
</html>