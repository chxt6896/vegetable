<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
<script type="text/javascript" src="<%=path %>/js/single.js"></script>
<!--[if IE 6]>
	<script type="text/javascript" src="<%=path %>/js/DD_belatedPNG.js" ></script>
	<script type="text/javascript">   
	DD_belatedPNG.fix('.center,.center1,.head,');   
	</script>
<![endif]-->
<title>原来你不喜欢的就是它</title>
</head>

<s:set name="vegetable" value="#session.vegetable"/>
<body onload="checkword()">
	<div class="align-center">
	  	<div class="head"></div>
	  	<div class="center1">
			<div class="mingpian">
				<div class="im">
					<form action="<%=path %>/vegetableupdate.action" method="post" id="form">
						<div  style="height:210px;"><img src="<%=path %>/imgs/vegetable/${vegetable.sid}.jpg" align="left" />
						<div class="jianju">姓名：<s:property value="#vegetable.names"/></div>
						<div class="jianju">特长：<s:property value="#vegetable.techang"/></div>
						<div class="jianju">爱好：<s:property value="#vegetable.aihao"/></div>
						<%if("1".equals(request.getParameter("opt"))||"4".equals(request.getParameter("opt"))){ %>
						<textarea name="content" cols="30" rows="10" style="width:255px; height:78px;" id="textarea" onkeyup="checkword()">#我最讨厌的蔬菜#是${vegetable.name}！！可是它#${vegetable.demo}#！！但是我就是讨厌它！！肿么办！！有木有跟我一样讨厌${vegetable.name}的！！有木有！！你讨厌神马！！你敢不敢告诉我你讨厌神马！！http://t.cn/hBdW6U</textarea>
						<%}else if("2".equals(request.getParameter("opt"))||"4".equals(request.getParameter("opt"))){ %>
						<textarea name="content" cols="30" rows="10" style="width:255px; height:78px;" id="textarea" onkeyup="checkword()">#我最讨厌的蔬菜#是神马？！我神马都讨厌！！我居然神马都讨厌！！根本没有我喜欢的蔬菜！！肿么办！！我素肿么活到今天的！！有木有跟我一样神马蔬菜都讨厌的！！有木有！！你讨厌神马！！你敢不敢告诉我你讨厌神马！！http://t.cn/hBdW6U</textarea>
						<%}else if("3".equals(request.getParameter("opt"))||"4".equals(request.getParameter("opt"))){%>
						<textarea name="content" cols="30" rows="10" style="width:255px; height:78px;" id="textarea" onkeyup="checkword()">#我最讨厌的蔬菜#是神马？！根本木有！！我什么都爱吃！！根本没有我讨厌的蔬菜！！肿么办！！有木有跟我一样神马蔬菜都不讨厌的！！有木有！！你讨厌神马！！你敢不敢告诉我你讨厌神马！！http://t.cn/hBdW6Us</textarea>
						<%} %>
						</div>
						<div id="xianzi" align="right">
							<span id="remain1">你还可输入</span><span id="word">140</span><span id="remain2">字</span>
						</div>
						<div id="tu" align="left">
							<br />
							<%if("4".equals(request.getParameter("opt"))){ %>
							<input type="button" id="button_999"/>
							<%}else if("5".equals(request.getParameter("opt"))){ %>
							<input type="button" id="button_1000"/>
							<%}else {%>
							<input type="button" id="button_888" onclick="dosubmit()" />
							<%} %>
							<input type="hidden" name="vegetable.sid" value="${vegetable.sid}" />
						</div>
						<div id="cleanfloat"></div>
					</form>
				</div>
			</div>	
		</div>
		<%if("4".equals(request.getParameter("opt")) || "5".equals(request.getParameter("opt"))){ %>
		<input type="hidden" id="backPath"/>
		<div style="text-align: center">
			<span id="totalSecond">3</span><span class="remain3">秒后自动关闭当前页</span><br /><br />
			<span id="res" class="res"><a href="${backPath}">>>我的微博主页</a></span>
			<script language="javascript" type="text/javascript">
			<!-- 
			var second = document.getElementById('totalSecond').textContent;
		    if (navigator.appName.indexOf("Explorer") > -1){  //判断是IE浏览器还是Firefox浏览器，采用相应措施取得秒数
		        second = document.getElementById('totalSecond').innerText;
		    }else{
		        second = document.getElementById('totalSecond').textContent;
		    }
		    setInterval("redirect()", 1000);  //每1秒钟调用redirect()方法一次
		    function redirect()
		    {
		        if (second < 0){
		        	window.opener=null;
		        	window.open('','_self');
		        	window.close();
		        }else{
		            if (navigator.appName.indexOf("Explorer") > -1){
		                document.getElementById('totalSecond').innerText = second--;
		            }else{
		                document.getElementById('totalSecond').textContent = second--;
		            }
		        }
		    }
		    -->
			</script>
		</div>
		<%} %>
		<div id="main1">
			<div id="one" class="mypng"><img src="<%=path %>/imgs/footer_left.png" /></div>
			<div id="three" class="mypng"><img src="<%=path %>/imgs/footer_right.png" /></div>
			<div id="two"></div>
		</div>
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