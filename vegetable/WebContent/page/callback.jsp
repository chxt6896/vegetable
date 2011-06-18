<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%@ page language="java" import="weibo4j.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="weboauth" scope="session" class="weibo4j.examples.WebOAuth" />
<%
	String verifier=request.getParameter("oauth_verifier");
	
	if(verifier!=null){
		System.out.println("oauth:"+verifier);
		RequestToken resToken=(RequestToken) session.getAttribute("resToken");
		if(resToken!=null){
			AccessToken accessToken=(AccessToken)session.getAttribute("accessToken");
			if(accessToken == null){
				accessToken=weboauth.requstAccessToken(resToken,verifier);
				request.getSession().setAttribute("accessToken", accessToken);
			}
			if("1".equals(request.getParameter("info"))){
				if(accessToken!=null){
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=1").forward(request, response);
				}else{
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=1").forward(request, response);
				}
			}else if("2".equals(request.getParameter("info"))){
				if(accessToken!=null){
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=2").forward(request, response);
				}else{
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=2").forward(request, response);
				}
			}else if("3".equals(request.getParameter("info"))){
				if(accessToken!=null){
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=3").forward(request, response);
				}else{
					pageContext.getServletContext().getRequestDispatcher("/page/single.jsp?opt=3").forward(request, response);
				}
			}
		}else{
			out.println("request token session error");
		}
	}
	else{
		out.println("verifier String error");
	}

%>   