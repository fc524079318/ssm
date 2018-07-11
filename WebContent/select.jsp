<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="selectUser.action" method="post"  >
		<button type="submit" >查询</button>
		<div>
			<table>
			  <tr>
			    <th></th>
			    <th>编号</th>
			    <th>姓名</th>
			    <th>密码</th>
			    <th>年龄</th>
			  </tr>
			  <c:forEach items="${resultList}"  var="u"  >
			  	 <tr>
				    <td>${u.id}</td>
				    <td>${u.name}</td>
				    <td>${u.password}</td>
				    <td>${u.age}</td>
				  </tr>
			  </c:forEach>
			</table>
		</div>
	</form>
</body>
</html>