       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@page contentType="text/html" pageEncoding="UTF-8"%>
       <img src="${product.imageURL}" width="175" height="175" alt="Album Image">
<!--        <h2>${product.artistName}</h2>-->
        <h2>${product.albumName}</h2>
        <p>${product.productType}</p>
        <p>${product.priceCurrencyFormat}  VNĐ </p>