<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="weibo4j.*" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<jsp:useBean id="weboauth" scope="session" class="weibo4j.examples.WebOAuth" />
<%
if("1".equals(request.getParameter("opt"))){
	RequestToken resToken=weboauth.request("http://do.jhost.cn/vegetable/page/callback.jsp?info=1");
	//RequestToken resToken=weboauth.request("http://localhost:8080/vegetable/page/callback.jsp?info=1");
	if(resToken!=null){
		out.println(resToken.getToken());
		out.println(resToken.getTokenSecret());
		session.setAttribute("resToken",resToken);
		response.sendRedirect(resToken.getAuthorizationURL());

	}else{
		out.println("request error");
	}
}else if("2".equals(request.getParameter("opt"))){
	RequestToken resToken=weboauth.request("http://do.jhost.cn/vegetable/page/callback.jsp?info=2");
	//RequestToken resToken=weboauth.request("http://localhost:8080/vegetable/page/callback.jsp?info=1");
	if(resToken!=null){
		out.println(resToken.getToken());
		out.println(resToken.getTokenSecret());
		session.setAttribute("resToken",resToken);
		response.sendRedirect(resToken.getAuthorizationURL());

	}else{
		out.println("request error");
	}  
}else if("3".equals(request.getParameter("opt"))){
	RequestToken resToken=weboauth.request("http://do.jhost.cn/vegetable/page/callback.jsp?info=3");
	//RequestToken resToken=weboauth.request("http://localhost:8080/vegetable/page/callback.jsp?info=1");
	if(resToken!=null){
		out.println(resToken.getToken());
		out.println(resToken.getTokenSecret());
		session.setAttribute("resToken",resToken);
		response.sendRedirect(resToken.getAuthorizationURL());

	}else{
		out.println("request error");
	}  
}else {%>
<a href="<%=path %>/page/call.jsp?opt=1">请点击进行OAuth认证</a> 
<%}%>