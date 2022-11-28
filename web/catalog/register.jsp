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
<jsp:include page="/includes/column_right_buttons.jsp" />

<!-- start the middle column -->

<section>

  <h1>Download registration</h1>

  <p>Before you can download and listen to these sound files, 
  you must register with us by entering your name and email 
  address below.</p>

  <!-- Import the core JSTL library -->
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- Use the JSTL url tag to encode the URL -->
  <form action="<c:url value='/catalog/product/${product.code}/listen/register'/>" method="post">
    <label>Email</label>
    <input type="email" name="email" required><br>
    <label>First Name</label>
    <input type="text" name="firstName" required><br>
    <label>Last Name</label>
    <input type="text" name="lastName" required><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Register" id="submit">
  </form>

</section>

<!-- end the middle column -->


<jsp:include page="/includes/footer1.jsp" />

</div>
    </body>
</html>