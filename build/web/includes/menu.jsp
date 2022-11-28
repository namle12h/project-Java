<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<div class="menu">
			<ul class="list_menu">
                            
                            
                            
				<html>
				<body>
				 
            
             <li> <a href="<c:url value='/' />"  >
                   TRANG CHỦ</a></li>
          <li><a href="<c:url value='/catalog' />">
                  DANH MỤC</a></li>
          <li><a href="<c:url value='/email' />">
                  ĐĂNG KÝ</a></li>
                     <li><a href="<c:url value='/order/showCart'/>">
                    GIỎ HÀNG</a></li>
            <li><a href="<c:url value='/customer_service' />">
                  HỔ TRỢ</a></li>
            <li><a href="<c:url value='/admin'/>">
                    QTRI VIÊN</a></li>
          
        </ul>
                    
                    <p>
                    <form action="../catalog/index.jsp" method="post">           
					<input type="text" placeholder="Tìm kiếm sản phẩm..." name="txtSearch">
					<input type="submit" name="timkiem" value="Tìm kiếm">
				</form>
			</p>
                                </body>
                                </html>
		
			
		</div>
