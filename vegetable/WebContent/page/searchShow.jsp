<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="weibo4j.examples.Search,java.util.List,weibo4j.Suggestions,weibo4j.*,weibo4j.http.*"%>
	<%
		StringBuffer content = new StringBuffer("");
//		response.setContentType("text/xml");
//		response.setHeader("Cache-Control","no-cache");
//		content.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
//		content.append("<suggestions>");
		
		AccessToken accessToken=(AccessToken)session.getAttribute("accessToken");
		String name = request.getParameter("name");
		//System.out.println(q);
		List<Suggestions> l = null;
		l = Search.getJson(accessToken, name); 
		for(Suggestions s:l){
//			content.append("<suggestion>");
//			content.append("<nickname>" + s.getNickname() + "</nickname>");
//			content.append("</suggestion>");
			content.append(s.getNickname() + ":");
		}
//		content.append("</suggestions>");
		System.out.println(content);
		out.println(content);
			
	%>