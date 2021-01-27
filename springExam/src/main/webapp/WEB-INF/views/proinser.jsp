<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
	
	
})

</script>
</head>
<body>
<form name="proinsert" id="proinsert" action="proinsert" method="post">
<p><label>상품id</label>
<input></p>
<p><label>이름</label>
<input name="product_name" ></p>
<p><label>단가</label>
<input name="product_price" ></p>
<p><label>상품정보</label>
<input name="product_info"></p>
<p><label>등록일자</label>
<input name="product_date" type="date" ></p>
<p><label>공급업체</label>
<input name="company" ></p>
<p><label>담장자</label>
<input name="manager_id" ></p>
<button type="submit">등록</button>
</form>
<button  onClick="location.href='${pageContext.request.contextPath}/select'">조회</button>
</body>
</html>