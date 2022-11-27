<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/utils/include/admintop.jsp"></jsp:include>
어드민 책 상세
<c:set var="book"  value="${requestScope.book }"/>
<div class="container">
  <table class="table table-bordered">
    <thead>
    </thead>
    <tbody>
      <tr>
        <td rowspan="5"><img alt="책표지" src="${book.book_filename }"> </td>
        <td>ISBN</td>
        <td>${book.isbn }</td>
      </tr>
      <tr>
        <td>작가</td>
        <td>${book.author}</td>
      </tr>
      <tr>
        <td>이름</td>
        <td>${book.book_name }</td>
      </tr>
      <tr>
        <td>가격</td>
        <td>${book.price }</td>
      </tr>
      <tr>
        <td>ebook</td>
        <td>${book.file_name }</td>
      </tr>
      <tr>
        <td colspan="3">${book.description }</td>
      </tr>
      <tr>
        <td colspan="3">
			<button type="button" class="btn btn-outline-dark" id="updatebtn">수정하기</button>
			<button type="button" class="btn btn-outline-dark" id="deletebtn">삭제하기</button>
		</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
<script type="text/javascript">
	$('#updatebtn').on({
		click:()=>{
			
		}
	});
</script>
</html>