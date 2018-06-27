<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>
<form action="${pageContext.request.contextPath }/verify.do" method="post">
<input type="text" name="verify">
<button type="submit">인증</button>
</form>
</body>
</html>