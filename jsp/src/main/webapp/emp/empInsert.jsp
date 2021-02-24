<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees.html</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		// 이메일 중복체크
		$('#btnEmail').on("click", function() {
			$.ajax({
				url : '../EmailCheck',
				data : "email=" + ﻿$("[name=email]").val(),
				success: function(response) {
					//span 태그에 출력
					$('#emailResult').append(response);
				},
			})
		})
	})
</script>
</head>
<body>
<h3 id="top">사원등록</h3>
<c:set var="url" value="../EmpInsert" />
<c:if test="${not empty empVO.employee_id }">
<c:set var="url" value="../EmpUpdate" />
</c:if>
<form action="${url}" method="post" name="frm">
	employee_id <input type="number" name="employee_id"
				<c:if test="${not empty empVO.employee_id }">readonly="readonly"</c:if>><br>
	first_name  <input name="first_name" value="${empVO.first_name }" ><br>
	last_name   <input name="last_name"><br>
	email       <input type="email" name="email" value="${empVO.email }">
				<button type="button" id="btnEmail">중복체크</button>
				<span id="emailResult"></span><br>
	phone_number<input type="text" name="phone_number"><br>
	hire_date   <input type="date" name="hire_date"><br>
	job_id
	<select name="job_id">
	<c:forEach items="${jobList }" var="job" >
		<option value="${job.job_id}" selected="selected" }> ${job.job_title }</option>
	</c:forEach>
	</select><br>
	department_id<br>
	<c:forEach var="dept" items="${deptList }">
	<input type="radio" value="${dept.department_id }"
	<c:if test="${dept.department_id == empVO.department_id}"> checked="checked" </c:if>>
	${dept.department_name }	
	</c:forEach><br>
	manager_id 
	<input type="text" name="manager_id">
	<input type="text" name="name">
	<button type="button" >사원검색</button><br>	

	<button type="submit">등록</button>
	<button type="reset">초기화</button>
</form>

</body>
</html>
