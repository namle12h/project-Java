




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
<html lang="en">      
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	
</head>
<body>
	<div class="wrapper">





<jsp:include page="/includes/header1.jsp" />
<jsp:include page="/includes/menu.jsp" />
<jsp:include page="/includes/column_left_all.jsp" />

<!-- start the middle column -->

<%@ page isErrorPage="true" %>

<section>

    <h1>404 Error</h1>
    <p>The server was not able to find the file you requested.</p>
    <p>To continue, click the Back button or select a link from this page.</p>

    <h2>Details</h2>
    <p>Requested URI: ${pageContext.errorData.requestURI}</p>

</section>

<!-- end the middle column -->

<jsp:include page="/includes/footer1.jsp" />



</div>
    </body>
</html>
