<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
      <h2>쇼핑몰 관리</h2>
      <div id='menu'>
         <nav id="topMenu" >
            <ul>
               <li><a class="menuLink" href="${pageContext.request.contextPath}/proinser">상품등록</a></li>
               <li>|</li>
               <li><a class="menuLink" href="${pageContext.request.contextPath}/select">상품목록조회/수정</a></li>
               <li>|</li>
               <li><a class="menuLink" href="#">매출현황조회</a></li>
               <li>|</li>
               <li><a class="menuLink" href="#">홈으로</a></li>
            </ul>
         </nav>
      </div>
   </div>
</body>
</html>