<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style2 {color: #FF0000}
.style3 {color: #006600}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <%
				String uname=(String)application.getAttribute("uname");
				String tname=request.getParameter("tname");
				String comment=request.getParameter("comment");



  try{      
         		
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
						
						
										
						Statement st1 = connection.createStatement();
						String query1 ="insert into tcomments (user,tname,comment,dt) values ('"+uname+"','"+tname+"','"+comment+"','"+date+"')";
						
						st1.executeUpdate (query1);
						
						%>
						
						<h2>Tweet Commented Successfully!!!  </h2></br>
						<a href="SearchTweets.jsp">Back</a>
						<%
						
						 

  }
  catch (Exception e){
    out.print(e);
  }
%>
								    
</div>
</body>
</html>