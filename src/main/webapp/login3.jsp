<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<script type="text/javascript" src="s/jquery/jquery.min.js"></script>
    <title>login</title>
    <style type="text/css">
        @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-weight: 300;
        }
        body {
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            font-weight: 300;
        }
        body ::-webkit-input-placeholder {
            /* WebKit browsers */
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            font-weight: 300;
        }
        body :-moz-placeholder {
            /* Mozilla Firefox 4 to 18 */
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            opacity: 1;
            font-weight: 300;
        }
        body ::-moz-placeholder {
            /* Mozilla Firefox 19+ */
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            opacity: 1;
            font-weight: 300;
        }
        body :-ms-input-placeholder {
            /* Internet Explorer 10+ */
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            font-weight: 300;
        }
        .wrapper {
            background: #50a3a2;
            background: -webkit-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
            background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);
            position: absolute;
            left: 0;
            width: 100%;
            height: 100%;
            /*  margin-top: -200px;*/
            overflow: hidden;
        }
        .wrapper.form-success .container h1 {
            -webkit-transform: translateY(85px);
            transform: translateY(85px);
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 80px 0;
            padding-top:200px;
            height: 400px;
            text-align: center;
        }
        .container h1 {
            font-size: 40px;
            -webkit-transition-duration: 1s;
            transition-duration: 1s;
            -webkit-transition-timing-function: ease-in-put;
            transition-timing-function: ease-in-put;
            font-weight: 200;
        }
        form {
            padding: 20px 0;
            position: relative;
            z-index: 2;
        }
        form input {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            outline: 0;
            border: 1px solid rgba(255, 255, 255, 0.4);
            background-color: rgba(255, 255, 255, 0.2);
            width: 250px;
            border-radius: 3px;
            padding: 10px 15px;
            margin: 0 auto 10px auto;
            display: block;
            text-align: center;
            font-size: 18px;
            color: white;
            -webkit-transition-duration: 0.25s;
            transition-duration: 0.25s;
            font-weight: 300;
        }
        form input:hover {
            background-color: rgba(255, 255, 255, 0.4);
        }
        form input:focus {
            background-color: white;
            width: 300px;
            color: #53e3a6;
        }
        form button {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            outline: 0;
            background-color: white;
            border: 0;
            padding: 10px 15px;
            color: #53e3a6;
            border-radius: 3px;
            width: 125px;
            cursor: pointer;
            font-size: 18px;
            -webkit-transition-duration: 0.25s;
            transition-duration: 0.25s;
        }
        form button:hover {
            background-color: #f5f7f9;
        }
        .bg-bubbles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }
        .bg-bubbles li {
            position: absolute;
            list-style: none;
            display: block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.15);
            bottom: -160px;
            -webkit-animation: square 25s infinite;
            animation: square 25s infinite;
            -webkit-transition-timing-function: linear;
            transition-timing-function: linear;
        }
        .bg-bubbles li:nth-child(1) {
            left: 10%;
        }
        .bg-bubbles li:nth-child(2) {
            left: 20%;
            width: 80px;
            height: 80px;
            -webkit-animation-delay: 2s;
            animation-delay: 2s;
            -webkit-animation-duration: 17s;
            animation-duration: 17s;
        }
        .bg-bubbles li:nth-child(3) {
            left: 25%;
            -webkit-animation-delay: 4s;
            animation-delay: 4s;
        }
        .bg-bubbles li:nth-child(4) {
            left: 40%;
            width: 60px;
            height: 60px;
            -webkit-animation-duration: 22s;
            animation-duration: 22s;
            background-color: rgba(255, 255, 255, 0.25);
        }
        .bg-bubbles li:nth-child(5) {
            left: 70%;
        }
        .bg-bubbles li:nth-child(6) {
            left: 80%;
            width: 120px;
            height: 120px;
            -webkit-animation-delay: 3s;
            animation-delay: 3s;
            background-color: rgba(255, 255, 255, 0.2);
        }
        .bg-bubbles li:nth-child(7) {
            left: 32%;
            width: 160px;
            height: 160px;
            -webkit-animation-delay: 7s;
            animation-delay: 7s;
        }
        .bg-bubbles li:nth-child(8) {
            left: 55%;
            width: 20px;
            height: 20px;
            -webkit-animation-delay: 15s;
            animation-delay: 15s;
            -webkit-animation-duration: 40s;
            animation-duration: 40s;
        }
        .bg-bubbles li:nth-child(9) {
            left: 25%;
            width: 10px;
            height: 10px;
            -webkit-animation-delay: 2s;
            animation-delay: 2s;
            -webkit-animation-duration: 40s;
            animation-duration: 40s;
            background-color: rgba(255, 255, 255, 0.3);
        }
        .bg-bubbles li:nth-child(10) {
            left: 90%;
            width: 160px;
            height: 160px;
            -webkit-animation-delay: 11s;
            animation-delay: 11s;
        }
        @-webkit-keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
            100% {
                -webkit-transform: translateY(-700px) rotate(600deg);
                transform: translateY(-700px) rotate(600deg);
            }
        }
        @keyframes square {
            0% {
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
            100% {
                -webkit-transform: translateY(-700px) rotate(600deg);
                transform: translateY(-700px) rotate(600deg);
            }
        }
        .cc{
            text-decoration: none;
            color: #53e3a6;
        }
    </style>
<style type="text/css" abt="234"></style>
<style type="text/css">object,embed{-webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;                -o-animation-duration:.001s;-o-animation-name:playerInserted;                animation-duration:.001s;animation-name:playerInserted;}                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}</style></head>
<body>
<div class="wrapper">
    <div class="container">
        <h1>Welcome</h1>

        <form id="loginForm" class="form" >
            <input type="text" placeholder="Username" name="userName">
            <input type="text" placeholder="Password" name="password">
            <button id="loginButton">Login</button>
            <button id="registerButton">register</button>
        </form>
    </div>

    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
<script type="text/javascript">
	$("#loginButton").on("click",function(){
		$.ajax({
			url:"system/login",
			type:"GET",
			data:$("#loginForm").serialize(),
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
</body>

</html>