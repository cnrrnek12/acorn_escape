<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/notice/insert.jsp</title>
</head>
<body>
<script>
	alert("${aid} 님이 작성한 글을 저장했습니다.");
	location.href="${pageContext.request.contextPath }/notice/daejeon/list.do";
</script>
</body>
</html>



