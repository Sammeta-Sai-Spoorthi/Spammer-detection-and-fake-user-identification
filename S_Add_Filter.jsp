<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
                        <%@ include file="connect.jsp" %>
                        <%@ page import="org.bouncycastle.util.encoders.Base64"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tweet Server Main Page..</title>
<meta name="keywords" content="Holiday, free CSS template, clean, neat, aqua, white" />
<meta name="description" content="Holiday is a clean and neat free CSS template using aqua and white colors." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<style type="text/css">
<!--
.style4 {
	color: #9933FF;
	font-size: 25px;
}
.style12 {color: #6633FF;
	font-size: 24px;
}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style3 {color: #FF00FF}
.style25 {color: #FFFFFF}
.style27 {font-size: 16px}
-->
</style>
</head>
<body>

<div id="templatemo_top_wrapper">
	<div id="templatemo_top">
		<div id="templatemo_header">
            
            <div>
              <table width="965" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="957"><p><span class="style4">Spammer Detection and Fake User Identification on Social Networks</span></p>
                  <p align="center"> <span class="style4"></span></p></td>
                </tr>
              </table>
          </div>
            
        </div> <!-- end of header -->
        <div id="templatemo_middle">
        	<div id="templatemo_menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="UserLogin.jsp">User</a></li>
                    <li><a href="ServerLogin.jsp" class="current">Tweet Server</a></li>
                </ul>
                
                <div id="search_box">
                    <form action="#" method="post">
                        <input type="text" value="Enter keyword here..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
                    </form>
                </div>
                <div class="cleaner"></div>
            </div> <!-- end of templatemo_menu -->
            
            <div id="mid_content">
            	<h2>Twitter -  Online Social Network </h2>
            	<p>Twitter is a popular online social network service for sharing short messages (tweets) among friends.</p>
          </div>
            
        </div> <!-- end of middle -->
	</div> <!-- end of top -->
</div> <!-- end of top wrapper -->

<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2><span class="style23"><span class="style24">Add Filter Details  </span><span class="style12"><span class="style3">..</span></span></span></h2>
          <form id="form1" name="form1" method="post" action="S_Add_Filter1.jsp">
            <p>&nbsp;</p>
            <table width="385" border="2">
              <tr>
                <td width="181" height="47" bgcolor="#FF0000"><span class="style25 style11"><strong>Select Filter Category </strong></span></td>
                <td width="186"><select name="tclass">
                  <option>Select Filter Category</option>
				  <option>Positive</option>
                  <option>Negative</option>
				  <option>Sexual</option> 
                  <option>Offensive</option>
                  <option>Hateful</option>
				  <option>Volgur</option>

                </select>                </td>
              </tr>
              <tr>
                <td height="52" bgcolor="#FF0000"><span class="style25 style11"><strong>Enter Filter Name </strong></span></td>
                <td><input type="text" name="fname" /></td>
              </tr>
              <tr>
                <td height="52">&nbsp;</td>
                <td><p>
                  <input type="submit" name="Submit" value="Add" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p><a href="AdminMain.jsp"></a></p>
            <p class="style13">Existing Filter Details .... </p>
        </form>
		  
		  
         <table width="417" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="253" height="44" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style3 style12 style7 style27" >
            <p><strong>Spam Category</strong></p>
          </div></td>
          <td  width="237" height="44" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style3 style12 style7 style27" >
            <p><strong>Spam Filter Name </strong></p>
          </div></td>
        </tr>
         
		 
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filter "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(1);
								s1=rs.getString(2);
								
								
								
								
					%>
           <tr>
              <td height="33"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style12 style14 style8" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
             </div></td>
			  
			  <td height="33"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style12 style14 style9" >
                    <div align="center">
                    <%out.println(s1);%> 
                </div>
             </div></td>
           </tr>
            <%
					
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
        </table>
		  
            <p align="justify">&nbsp;</p>
            <div class="cleaner"><a href="ServerMain.jsp">Back</a></div>
	  </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="col_w300 float_r">
    	<h2>Server Menu </h2>
            <p><a href="ServerMain.jsp"><strong>Home</strong></a></p>
            <p><a href="index.html"><strong>Log Out</strong></a></p>
            <p class="news_box"><a href="#"></a></p>
      <h2 class="news_box">&nbsp;</h2>
  </div>
    <div class="cleaner"></div>
</div> <!-- end of main -->

<div id="templatemo_footer_wrapper_01">
  <div id="templatemo_footer_wrapper_02"></div> 
	<!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>