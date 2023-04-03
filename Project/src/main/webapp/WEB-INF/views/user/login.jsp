<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://unpkg.com/98.css">
<title>Mirine-Community</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp" />

<div class="container" style="margin-top:150px">
	<div class="row" style="margin-bottom: 200px;">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div>
				
					<div class="window">
						<div class="title-bar">
   							<div class="title-bar-text">Sign in to our platform</div>
  						</div>
						<div class="window-body">
					<c:if test="${fail == true }">
					<div class="alert alert-danger">
						<h3>ログイン失敗</h3>
						<p>IDパスワードを確認してください</p>
					</div>
					</c:if>
					<form:form action="${root }user/login_pro" method="post" modelAttribute="tempLoginUserBean">
						<div class="form-group">
							<form:label path="user_id">ID</form:label>
							<form:input path="user_id" class="form-control"/>
							<form:errors path="user_id" style="color:red"/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">パスワード</form:label>
							<form:password path="user_pw" class="form-control"/>
							<form:errors path="user_pw" style="color:red"/>
						</div>
						<div class="form-group text-right">
							<form:button class="btn">ログイン</form:button>
							<a href="${root }user/join" class="btn"><button style="height: 37px; border-radius: 0.25rem;">会員登録</button></a>
						</div>
					</form:form>
					
					</div>
						
					</div>
					
					
				</div>
			</div>
		</div>
	</div>
</div>


<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>






<style>
	body{
	  	background: #008080;
  		font-family: Arial, sans-serif;
  		user-select: none;
  		font-weight: 300;
  		-webkit-font-smoothing: none;
  		-moz-osx-font-smoothing: grayscale;
	}	
</style>



</body>
</html>








