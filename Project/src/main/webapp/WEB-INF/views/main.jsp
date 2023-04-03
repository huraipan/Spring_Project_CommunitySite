<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>
	body{
	  	background: #008080;
  		font-family: Arial, sans-serif;
  		user-select: none;
  		font-weight: 300;
  		-webkit-font-smoothing: none;
  		-moz-osx-font-smoothing: grayscale;
	}
	
	.card{
	 background-color: #c0c0c0;
	}
</style>
</head>
<body>
	
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>


<div class="container" style="margin-top:100px">
	<div class="row">
		<c:forEach var="sub_list" items="${list }" varStatus="idx">
			<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div>
					<div class="window">
						<div class="title-bar">
							<div class="title-bar-text">${board_list[idx.index].board_info_name }</div>
						</div>
					<div class="window-body">
					<table class="table table-hover" id='board_list'>
						<thead>
							<tr>
								<th class="text-center w-25">番号</th>
								<th>タイトル</th>
								<th class="text-center w-25 d-none d-xl-table-cell">作成日</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="obj" items="${sub_list }">
								<tr>
									<td class="text-center">${obj.content_idx }</td>
									<th><a href='${root }board/read?board_info_idx=${board_list[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1'>${obj.content_subject }</a></th>
									<td class="text-center d-none d-xl-table-cell">${obj.content_date }</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
					
										<a href="${root }board/main?board_info_idx=${board_list[idx.index].board_info_idx}"><button>もっと見る</button></a>
									</div>
									<div class="status-bar">
										<p class="status-bar-field">Press F1 for help</p>
										<p class="status-bar-field">Slide 1</p>
										<p class="status-bar-field">CPU Usage: 14%</p>
									</div>
								</div>
							</div>
						</div>
					</div>
		</c:forEach>
		


		




	</div>
</div>
	
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>



