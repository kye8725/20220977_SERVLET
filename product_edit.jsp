<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type ="text/javascript" src ="../js/validation.js"></script>
<title>상품 편집</title>
    
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
		   location.href = "product_delete.jsp?id=" + id;
		else
		   return;
	}
</script>
<!-- </head> -->
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
   <jsp:include page="top_menu_ad.jsp" />
   <div class="jumbotron">
	   <div class="container">
		<h1 class="display-3">상품 편집</h1>
	   </div>
	</div>

	<div class="container">
	   <div class="row" align="center">
		<%@ include file="../db/db_conn.jsp"%>
		<%
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
		%>
		<div class="col-md-4">
