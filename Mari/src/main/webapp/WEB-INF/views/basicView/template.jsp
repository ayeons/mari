<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<tiles:insertAttribute name="resourceH"></tiles:insertAttribute>
<title>Insert title here</title>
</head>
<body>
<div class="super_container">
<tiles:insertAttribute name="header"></tiles:insertAttribute>

<tiles:insertAttribute name="body"/>

<tiles:insertAttribute name="footer"></tiles:insertAttribute>
</div>
<tiles:insertAttribute name="resourceF"></tiles:insertAttribute>
</body>
</html>