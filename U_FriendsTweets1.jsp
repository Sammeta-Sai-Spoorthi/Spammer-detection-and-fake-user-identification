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
				String tuser=request.getParameter("tuser");
				String tcomment=request.getParameter("tcomment");
				String tdate=request.getParameter("tdate");
				String retweet=request.getParameter("textarea");

			

  						try{      
         	
						   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
										
						Statement st1 = connection.createStatement();
						String query1 ="insert into retweets (tname,tweet_by,comment,tweet_dt,retweet_by,re_comment,retweet_dt) values ('"+tname+"','"+tuser+"','"+tcomment+"','"+tdate+"','"+uname+"','"+retweet+"','"+date+"')";
						
						st1.executeUpdate (query1);
						
						
 						 }
  						catch (Exception e){
   							 out.print(e);
 						 }
%>
	<a href="UserMain.jsp" class="style94"><strong>Back</strong></a>							    
</div>
</body>
</html>