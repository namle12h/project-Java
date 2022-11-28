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

<section>

<h1>Báo cáo Tải xuống</h1>
<p>Vui lòng nhập ngày tháng </p>

<form action="<c:url value='/adminController/displayReport'/>" method="post">

<!-- Note the use of hidden fields to pass parameters -->
<input type="hidden" name="reportName" value="${param.reportName}">
<input type="hidden" name="reportTitle" value="${param.reportTitle}">

    <label>Ngày bắt đầu</label>
    <input type="text" size="10" maxlength=10 
           name="startDate" value="${currentYear}-01-01" required><br>

    <label>Ngày kết thúc</label>
    <input type="text" size="10" maxlength=10 
           name="endDate" value="${currentYear}-12-31" required><br>

    <label>&nbsp;</label>
    <input type="submit" value="Continue">

</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />

</div>
    </body>
</html>