<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=path %>/js/searchIndex.js"></script>
<style>
.more{
	display:none;
	width:120px;
	line-height:20px;
	color:#000;
	border:#cccccc 1px solid;
	font-size:12px;
	position:absolute;}
.more li {
	color: #666;
	height: 21px;
	line-height: 21px;
	overflow: hidden;
	padding: 0 0 0 8px;
	cursor: pointer;}
.divbox{/*提供一个相对节点，让弹出层相对它绝对定位；*/
	height:0px;
	line-height:0;
	font-size:0;
	position:relative;}
</style>

<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<input type="text" id="test" onkeyup="validate()"/>
	</form>
	<div class="divbox">
    <div id="any1" class="more" onclick="clocer('any1');">
    <ul style= "list-style-type:none;padding-left:1px;" id="flist">
    </ul>
    </div>
    </div>
	<!--  
	<div class="txtInput">
        <label for="searchTxt">web前端的那些破事</label>
        <input type="text" class="searchTxt" id="searchTxt" />
    </div>
    -->
	<div id="res"></div>
</body>
</html>