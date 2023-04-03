<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!-- <script>
	alert("ログインしました")
	location.href = '${root}main'
</script> -->

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="refresh" content="5;url=${root}main">
  <title>Mirine-Community</title>
</head>
<body>
<style>
  body{
    margin: 0;
    display: flex;
    justify-content: center;
    line-height: 50%;
    background-color: black;

  }
</style>
<img src="${root }image/windows98.gif" style="width: 1270px; height: 570px;" />
</body>
</html>