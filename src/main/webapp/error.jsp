<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="login_page">
    <head>
    	<base href="<%=basePath%>">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Error</title>
		<style>
			#promt{
				height:400px;
				width:465px;
				float:left;
			}
		</style>
	</head>
	<body style="margin:0px;padding:0px;">
		<div style="height:100%;width:960px;margin:auto;">
			<div style="height:407px;width:370px;float:left;">
				<img src="<%=basePath%>img/error.png"/>
			</div>
			<div id="promt">
				<img src="<%=basePath%>img/error_text.png"/>
			</div>
		</div>

</body>
</html>