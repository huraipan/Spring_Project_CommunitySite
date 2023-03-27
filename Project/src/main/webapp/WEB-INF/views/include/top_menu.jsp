<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>

<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="${root }main">Mirine-Community</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		<ul class="navbar-nav">
			<c:forEach var="obj" items="${topMenuList }">
			<li class="nav-item">
				<a href="${root }board/main?board_info_idx=${obj.board_info_idx}" class="nav-link">${obj.board_info_name }</a>
			</li>
			</c:forEach>
		</ul>
		
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<a href="${root }user/login" class="nav-link">ログイン</a>
			</li>
			<li class="nav-item">
				<a href="${root }user/join" class="nav-link">会員登録</a>
			</li>
			<li class="nav-item">
				<a href="${root }user/modify" class="nav-link">情報修正</a>
			</li>
			<li class="nav-item">
				<a href="${root }user/logout" class="nav-link">ログアウト</a>
			</li>
		</ul>
	</div>
</nav>