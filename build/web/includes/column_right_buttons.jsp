<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <aside class="sidebar1">
        
         <form method="post" action="<c:url value='/order/addItem'/>">
            <input type="hidden" name="productCode" value="${product.code}">
            <input type="image" src="<c:url value='/images/hhh.png'/>" 
                   width="125"  alt="Add to Cart">
        </form>
        <a href="<c:url value='/catalog/${product.code}/sound.jsp' />">
            <img src="<c:url value='/images/hh.png'/>" 
                 width="125" alt="Listen to Samples" class="top_margin">
        </a>
    </aside>