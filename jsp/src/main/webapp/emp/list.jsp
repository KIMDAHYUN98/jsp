<%@page import="java.util.ArrayList"%>
<%@page import="emp.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp/list.jsp</title>
</head>
<body>

<c:forEach items="${list }" var="emp"> <!-- for(EmpVO emp : list) -->
	${emp.first_name } ${emp.email }
	${emp.salary}
	<fmt:formatDate value="${emp.hire_date }" pattern="yyyy-MM"/><br>
</c:forEach>

<my:login/>
<my:paging/><br>

<%-- <%= ((ArrayList<EmpVO>)request.getAttribute("list")).get(2).getFirst_name() %> --%>
<hr>
이름 : ${list[1].first_name }
<hr>
context (어플이름) : ${pageContext.request.contextPath }
<hr>
<%= request.getHeader("User-Agent") %>
<br>
${header["User-Agent"] }
</body>
</html>