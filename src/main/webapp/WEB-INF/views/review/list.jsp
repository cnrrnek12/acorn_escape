<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div>
		<h1>이용후기</h1>
		<span>Total <strong>${totalRow }</strong> 건 <strong>${pageNum }</strong> 페이지</span>
		
		<input type="button" value="글쓰기" onClick="location.href='insert-form.do'">
		<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.num }</td>
				<td><a href="review-detail.do?num=${tmp.num }">${tmp.title }</a></td>
				<td>${tmp.writer }</td>
				<td>${tmp.regdate }</td>
				<td>${tmp.viewcount }</td>
			</tr>
		</c:forEach>		
		</tbody>
	</table>
	
	<!--페이지 번호 -->
	<div class="page-display">
		<ul class="pagination pagination-sm">
		<c:if test="${startPageNum ne 1 }">
			<li class="page-item"><a class="page-link" href="list.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			<c:choose>
				<c:when test="${i eq pageNum }">
					<li class="page-item active"><a class="page-link" href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${endPageNum lt totalPageCount }">
			<li class="page-item"><a class="page-link" href="list.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">다음</a></li>
		</c:if>
		</ul>
	</div>
	
	<!--검색  -->
	<form action="list.do" method="get">
		<select name="condition" id="condition">
			<option value="title_content" <c:if test="${condition eq 'title_content' }">selected</c:if>>제목+내용</option>
			<option value="title" <c:if test="${condition eq 'title' }">selected</c:if>>제목</option>
			<option value="writer" <c:if test="${condition eq 'writer' }">selected</c:if>>작성자</option>
		</select>
		<input value="${keyword }" type="text" name="keyword" />
		<button type="submit">검색</button>
	</form>	
	</div>
</body>
</html>