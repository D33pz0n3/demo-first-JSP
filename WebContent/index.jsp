<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
	<%@ include file="//includes/header.jsp" %>
</head>
<body>
	<div class='container'>
		<%@ include file="//includes/items.jsp" %>
	</div>
	<script>
		function show(button,id){	
			var btnid=button.id;
			if(btnid=='btnAbstract'){
				$('.highlight-'+id).hide();
				$('.abstact-'+id).toggle();	
			}else if(btnid=='btnHighlight'){
				$('.abstact-'+id).hide();
				$('.highlight-'+id).toggle();
			}
		}

	</script>
</body>
</html>





