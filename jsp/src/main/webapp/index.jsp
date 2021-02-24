<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>index.jsp</title>
<script>
	var n = localStorage.getItem("name");
	if(n != null) {
		alert(n);
	}
</script>
</head>
<div></div>
<body>
<h2>Hello World!</h2>
	<div id="result">이벤트 테스트</div>
	<div id="result2">두번째</div>
</body>
</html>
