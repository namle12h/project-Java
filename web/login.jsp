<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
<html lang="en">      
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
<!--        <link rel="stylesheet" type="text/css" href="styles/main.css">-->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	
</head>
<body>
	<div class="wrapper">





<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/menu.jsp"/>
<jsp:include page="/includes/column_left_all.jsp" />


<!-- start the middle column -->

<section>
    <link rel="stylesheet" type="text/css" href="styles/main.css">
<h1>Login ADMIN </h1>
<p>Vui lòng nhập tên người dùng và mật khẩu để tiếp tục.</p>
<form action="j_security_check" method="post">
    <label>Username</label>
    <input type="text" name="j_username"><br>
    <label>Password</label>
    <input type="password" name="j_password"><br>
    <label>&nbsp;</label>
    <input type="submit" value="Login">
</form>

</section>

<!-- end the middle column -->


<jsp:include page="/includes/footer.jsp" />

</div>
    </body>
</html>
