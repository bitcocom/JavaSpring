<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/style.css"> 
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script> 
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div class="card">
       <div class="card-header">
	     <div class="container" style="text-align: center;">
		    <h2>도서 고객 및 대여관리 프로그램 ver 1.0</h2>		    
	     </div>
	   </div>
	   <ul class="nav justify-content-center">
		  <li class="nav-item">
		    <a class="nav-link" href="/shop/register">고객등록</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/shop/list">고객목록조회/수정</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/shop/rentList">고객대여리스트</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/shop/rentMoney">고객대여금액조회</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/shop/">홈으로</a>
		  </li>
		</ul>	 
      <div class="card-body">
       <div class="row">
         <div class="col-3"></div>
         <div class="col-6">        
         <div class="card" style="max-height: 1000px;min-height: 500px;">
           <div class="card-body">            
                <h3 class="card-title" style="text-align: center;">고객정보수정</h3>
                <form action="/shop/modify" method="post">
                   <div class="form-group">
                     <label>고객번호:</label>
                     <input type="text" name="cust_no" value="${cvo.cust_no}" class="form-control" readonly/>
                   </div>
                   <div class="form-group">
                     <label>고객이름:</label>
                     <input type="text" name="cust_name" value="${cvo.cust_name}" class="form-control"/>
                   </div> 
                   <div class="form-group">
                     <label>전화번호:</label>
                     <input type="text" name="phone" value="${cvo.phone}" class="form-control"/>
                   </div> 
                   <div class="form-group">
                     <label>이메일:</label>
                     <input type="text" name="cust_email" value="${cvo.cust_email}" class="form-control"/>
                   </div>  
                   <div class="form-group">
                     <label>고객등급(P,G,S):</label>
                     <input type="text" name="grade" value="${cvo.grade}" class="form-control"/>
                   </div>
                   <button class="btn btn-sm btn-primary">수정</button>
                   <button type="button" onclick="location.href='/shop/list'" class="btn btn-sm btn-primary">조회</button>
                </form>
           </div>             
         </div>
       </div> 
       <div class="col-3"></div>         
       </div>
       </div>		 
     <div class="card-footer" style="text-align: center;">
      <span>나도 할 수 있는 Java & Spring 웹 개발 종합반(수강자 이름)</span>
     </div>
  </div>
</body>
</html>
    