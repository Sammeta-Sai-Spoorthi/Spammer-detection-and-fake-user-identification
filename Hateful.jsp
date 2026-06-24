 <%@ include file="connect.jsp"%>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Hateful",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Hateful";
	
	try
	{
			String sql3="select user,tname from ttopic";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
        <table width="778" border="1">
				  
				  <tr>
				   <td width="94" height="33" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong>ID </strong></div>
					</div></td>
				  <td width="94" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong>User Name </strong></div>
					</div></td>
					<td width="127" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong>Tweet Name </strong></div>
					</div></td>
					<td width="168" bgcolor="#FFFF00" ><div align="left" class="style4 style36 style2 style11 style12 style5">
						<div align="center" class="style13">Retweeted Details </div>
					</div></td>
					<td width="197" bgcolor="#FFFF00"><div align="left" class="style37 style4 style12 style11 style5">
						<div align="center">Date and Time</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from tcomments where tname='"+s7+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);//id
					s2=rs.getString(2); //user
					s22=rs.getString(3); //tname
					s3=rs.getString(4).toLowerCase(); //  Comment 
					s5=rs.getString(5);  // Date
					
					count++;

			   
			       String sql1="select * from filter where tctype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="94" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=i%></strong></div></td>
								<td width="127" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s2%></a></strong></div></td>
								<td width="127" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s22%></a></strong></div></td>
								
								<td width="168" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s3%></strong></div></td>
								<td width="197" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s5%></strong></div></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
				}
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        