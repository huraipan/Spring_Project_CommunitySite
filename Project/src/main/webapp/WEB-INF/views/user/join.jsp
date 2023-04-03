<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
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
<script>
	function checkUserIdExist(){
		
		var user_id = $("#user_id").val()
		
		if(user_id.length == 0){
			alert("IDを入力してください")
			return
		}
		
		$.ajax({
			url : '${root}user/checkUserIdExist/' + user_id,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'true'){
					alert('使用できます')
					$("#userIdExist").val('true')
				}else{
					alert('使用できません')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
</script>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div>
				<div class="window">
						<div class="title-bar">
   							<div class="title-bar-text">Sign up to our platform</div>
  						</div>
  						<div class="window-body">
  						
					<form:form action="${root }user/join_pro" method='post' modelAttribute="joinUserBean">
						<form:hidden path="userIdExist"/>
						<div class="form-group">
							<form:label path="user_name">名前</form:label>
							<form:input path="user_name" class='form-control'/>
							<form:errors path="user_name" style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_id">ID</form:label>
							<div class="input-group">
								<form:input path="user_id" class='form-control' onkeypress="resetUserIdExist()"/>
								<div class="input-group-append">
									<button type="button" class="btn" onclick='checkUserIdExist()'>重複確認</button>
								</div>
							</div>
							<form:errors path="user_id" style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">パスワード</form:label>
							<form:password path="user_pw" class='form-control'/>
							<form:errors path='user_pw' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pw2">パスワード確認</form:label>
							<form:password path="user_pw2" class='form-control'/>
							<form:errors path='user_pw2' style='color:red'/>
						</div>
						<div class="form-group">
							<div class="text-right">
								<form:button class='btn'>会員登録</form:button>
							</div>
						</div>
					</form:form>
					
					</div>
					
					
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
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








    