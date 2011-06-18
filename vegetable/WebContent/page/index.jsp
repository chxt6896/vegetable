<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/vegetable.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/button.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/index.js"></script>
<!--[if IE 6]>
	<script type="text/javascript" src="<%=path %>/js/DD_belatedPNG.js" ></script>
	<script type="text/javascript">   
	DD_belatedPNG.fix('.center,.center1,.head,');   
	</script>
<![endif]-->
<title>我最讨厌的蔬菜</title>
</head>

<body>
<div class="align-center">
	<div class="head"></div>
	<form action="<%=path %>/vegetable.action" method="post" id="form">
	<div class="center">
		<div id="main">
			<div id="left" class="mypng" align="left">
				<a href="#"><img id="leftbt" src="<%=path %>/imgs/left.png" /></a>
			</div>
			<div id="center">
				<table id="ca">
					<tr>
						<td><input type="submit" name="vegetable.id" value="001_1" id="button_001" title="胡萝卜"></td>
						<td><input type="submit" name="vegetable.id" value="002_1" id="button_002" title="茄子"></td>
						<td><input type="submit" name="vegetable.id" value="003_1" id="button_003" title="萝卜"></td>
					</tr>
					<tr>
						<td><input type="submit" name="vegetable.id" value="004_1" id="button_004" title="南瓜"></td>
						<td><input type="submit" name="vegetable.id" value="005_1" id="button_005" title="番茄"></td>
						<td><input type="submit" name="vegetable.id" value="006_1" id="button_006" title="黄瓜"></td>
					</tr>
				</table>
				<table id="cca" style="display: none">
					<tr>
						<td><input type="submit" name="vegetable.id" value="007_1" id="button_007" title="玉米"></td>
						<td><input type="submit" name="vegetable.id" value="008_1" id="button_008" title="蘑菇"></td>
						<td><input type="submit" name="vegetable.id" value="009_1" id="button_009" title="豆角"></td>
					</tr>
					<tr>
						<td><input type="submit" name="vegetable.id" value="010_1" id="button_010" title="土豆"></td>
						<td><input type="submit" name="vegetable.id" value="011_1" id="button_011" title="青椒"></td>
						<td><input type="submit" name="vegetable.id" value="012_1" id="button_012" title="菜花"></td>
					</tr>
				</table>
				<table id="ccca" style="display: none">
					<tr>
						<td><input type="submit" name="vegetable.id" value="013_1" id="button_013" title="芹菜"></td>
						<td><input type="submit" name="vegetable.id" value="014_1" id="button_014" title="尖椒"></td>
						<td><input type="submit" name="vegetable.id" value="015_1" id="button_015" title="卷心菜"></td>
					</tr>
					<tr>
						<td><input type="submit" name="vegetable.id" value="016_1" id="button_016" title="洋葱"></td>
						<td><input type="submit" name="vegetable.id" value="017_1" id="button_017" title="白菜"></td>
						<td><input type="submit" name="vegetable.id" value="018_1" id="button_018" title="大葱"></td>
					</tr>
				</table>
				<table id="cccca" style="display: none">
					<tr>
						<td><input type="submit" name="vegetable.id" value="021_1" id="button_021" title="香菜"></td>
						<td><input type="submit" name="vegetable.id" value="022_1" id="button_022" title="菠菜"></td>
						<td><input type="submit" name="vegetable.id" value="023_1" id="button_023" title="苦瓜"></td>
					</tr>
					<tr>
						<td><input type="submit" name="vegetable.id" value="024_1" id="button_024" title="韭菜"></td>
						<td><input type="submit" name="vegetable.id" value="025_1" id="button_025" title="冬瓜"></td>
						<td><input type="submit" name="vegetable.id" value="026_1" id="button_026" title="蒜苔"></td>
					</tr>
				</table>
			</div>
			<div id="right" class="mypng" align="right">
				<a href="#"><img id="rightbt" src="<%=path %>/imgs/right.png" /></a>
			</div>
		</div>
		<div id="cleanfloat"></div>
	</div>
	
	<div id="main1">
		<div id="one" class="mypng"><img src="<%=path %>/imgs/footer_left.png" /></div>
		<div id="three" class="mypng"><img src="<%=path %>/imgs/footer_right.png" /></div>
		<div id="two" class="mypng">
			<div>
				<p align="center">
					<br />
					<input type="submit" name="vegetable.id" value="019_1" id="button_019"><br /><br />
					<input type="submit" name="vegetable.id" value="020_1" id="button_020">
				</p>
			</div>
		</div>
	</div>
	</form>	
	<div id="cleanfloat"></div>
	<div class="zi" align="center">
		<font>
			<a href="http://t.sina.com.cn/laji92454" target="_blank">@张胤laji92454</a>、
			<a href="http://t.sina.com.cn/xudong0612" target="_blank">@赵旭东_IT</a>、
			<a href="http://t.sina.com.cn/suntengfei" target="_blank">@孙腾飞</a>、
			<a href="http://t.sina.com.cn/uuhaitao" target="_blank">@uuhaitao</a>、
			<a href="http://t.sina.com.cn/chxt6896" target="_blank">@浩宇啸天</a>、<br />
			<a href="http://t.sina.com.cn/jasonse7en" target="_blank">@fakejason</a>、
			<a href="http://t.sina.com.cn/jeremykill" target="_blank">@WinteR_上杉逹也</a>（SSWB）
		</font>
	</div>
</div>
</body>
</html>