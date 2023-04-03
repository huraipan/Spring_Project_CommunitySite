<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath }/'/>
<!-- <script>
	alert("ログアウトしました。")
	location.href="${root}main"
</script> -->

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/98.css">
  <title>Mirine-Community</title>
  <style>
  	body{
  		display: flex;
  		justify-content: center;
  		background-color: #c0c0c0;
  	}

    .window-body > a{
      float: right;
    }
  </style>
</head>
<body>


  <div class="window" style="width: 300px">
  <div class="title-bar">
    <div class="title-bar-text">A Window With Stuff In It</div>
    <div class="title-bar-controls">
      <button aria-label="Minimize"></button>
      <button aria-label="Maximize"></button>
      <button aria-label="Close"></button>
    </div>
  </div>
  <div class="window-body">
    <p>ログアウトしました。</p>
    <a href="${root}main"><button>確認</button></a>
  </div>
</div>



</body>
</html>
