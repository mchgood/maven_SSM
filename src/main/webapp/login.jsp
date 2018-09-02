<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<script type="text/javascript" src="s/jquery/jquery.min.js"></script>
</head>
<body>
	<form id="login-form" action="system/login" >
		用户名：<input type="text" name="userName" ><br>
		密   码：<input type="password" name="password" ><br>		
		<input type="button" id="login-button" value="登录">		 
	</form>
</body>
<script type="text/javascript">
	$("#login-button").on("click",function(){
		$.ajax({
			url:"system/login",
			type:"GET",
			data:$("#login-form").serialize(),
			success:function(data){
				if(data.result){
					// 登录成功，跳转到index
					location.href="index.jsp";
				}else{
					alert(data.msg);
				}
			},
			datatype:"json"
		})
	})
</script>
</html>