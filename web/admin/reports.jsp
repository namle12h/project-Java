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

<h1>Báo cáo danh sách</h1>

    
<form action="<c:url value='/adminController/displayReport'/>" method="post">
    <input type="hidden" name="reportName" value="userEmail">
    <input type="hidden" name="reportTitle" value="The User Email report">
    <input type="submit" value="Báo cáo Email từ người dùng" class="left_margin">
</form>

<form action="parameters.jsp" method="post">
    <input type="hidden" name="reportName" value="downloadDetail">
    <input type="hidden" name="reportTitle" value="The Downloads report">
    <input type="submit" value="Báo cáo lượt tải xuống" class="left_margin">
</form>

</section>

<!-- end middle column -->

<jsp:include page="/includes/footer1.jsp" />

</div>
    </body>
</html>
