<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mirine-Community</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp" />

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form action="${root }user/modify" method="get">
					<div class="form-group">
						<label for="user_name">名前</label>
						<input type="text" id="user_name" name="user_name" class="form-control" value="田中" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="user_id">ID</label>
						<input type="text" id="user_id" name="user_id" class="form-control" value="abc" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="user_pw">パスワード</label>
						<input type="password" id="user_pw" name="user_pw" class="form-control" value="1234"/>
					</div>
					<div class="form-group">
						<label for="user_pw2">パスワード確認</label>
						<input type="password" id="user_pw2" name="user_pw2" class="form-control" value="1234"/>
					</div>
					<div class="form-group">
						<div class="text-right">
							<button type="submit" class="btn btn-primary">情報修正</button>
						</div>
					</div>
					
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>
