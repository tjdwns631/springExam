<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>상품아이디</td>
			<td>이름</td>
			<td>단가</td>
			<td>담당자</td>
			<td>등록일자</td>
			<td>공급 업체</td>
		</tr>
		<c:forEach var="product" items="${product }">
			<tr>
				<td>${product.product_id }</td>
				<td>${product.product_name }</td>
				<td>${product.product_price }</td>
				<td>
				<c:choose>
						<c:when test="${product.manager_id eq 'E201' }">
					김사원
				</c:when>
						<c:when test="${product.manager_id eq 'E202' }">
					이대리
				</c:when>
				</c:choose>
				</td>
				<%-- <c:if test="${product.manager_id eq 'E201' }">김사원</c:if>
				<c:if test="${product.manager_id eq 'E202' }">이대리</c:if> --%>
				<td>${product.product_date }</td>
				<td>${product.company }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>