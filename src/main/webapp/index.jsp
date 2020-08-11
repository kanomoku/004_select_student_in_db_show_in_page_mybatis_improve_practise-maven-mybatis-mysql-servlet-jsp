<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	color: green;
	text-decoration: none;
	font-size: 20px;
	font-weight: bold
}
a:hover {
	color: red;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
		</tr>
		<c:forEach items="${list }" var="peo">
			<tr>
				<td>${peo.id }</td>
				<td>${peo.name }</td>
				<td>${peo.age }</td>
			</tr>
		</c:forEach>
	</table>
</body>
<a href="/show">查询学生信息</a>
</html>