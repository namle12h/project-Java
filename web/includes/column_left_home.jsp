<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar">
    <link rel="stylesheet" type="text/css" href="../styles/main.css">
    <nav>
      <ul>
          <li><a class="current" href="<c:url value='/' />">
                  TRANG CHỦ</a></li>
          <li><a href="<c:url value='/catalog' />">
                  DANH MỤC</a></li>
      </ul>
    </nav>
</div>