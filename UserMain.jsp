<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Main Page..</title>
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
.style19 {color: #009900}
.style22 {color: #00CC00}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style3 {color: #FF00FF}
.style5 {	color: #FF0000;
	font-weight: bold;
}
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
                    <li><a href="UserLogin.jsp" class="current">User</a></li>
                    <li><a href="ServerLogin.jsp">Tweet Server</a></li>
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
            <h2><span class="style23"><span class="style24">Welcome  User</span><span class="style12"> <span class="style19"><span class="style22"><%=(String)application.getAttribute("uname")%> </span></span><span class="style3">..</span></span></span></h2>
            <div class="image_wrapper image_fl"><span></span>
                <img src="images/templatemo_image_01.jpg" alt="Image" />
            </div>
            <p align="justify"><span class="style5">Social networking sites engage millions of users around the world. The users' interactions with these social sites, such as Twitter and Facebook have a tremendous impact and occasionally undesirable repercussions for daily life. The prominent social networking sites have turned into a target platform for the spammers to disperse a huge amount of irrelevant and deleterious information. Twitter, for example, has become one of the most extravagantly used platforms of all times and therefore allows an unreasonable amount of spam. Fake users send undesired tweets to users to promote services or websites that not only affect legitimate users but also disrupt resource consumption. Moreover, the possibility of expanding invalid information to users through fake identities has increased that results in the unrolling of harmful content. Recently, the detection of spammers and identication of fake users on Twitter has become a common area of research in contemporary online social Networks (OSNs). In this paper, we perform a review of techniques used for detecting spammers on Twitter. Moreover, a taxonomy of the Twitter spam detection approaches is presented that classies the techniques based on their ability to detect: (i) fake content, (ii) spam based on URL, (iii) spam in trending topics, and (iv) fake users. The presented techniques are also compared based on various features, such as user features, content features, graph features, structure features, and time features. We are hopeful that the presented study will be a useful resource for researchers to nd the highlights of recent developments in Twitter spam detection on a single platform.</span></p>
            <div class="cleaner"></div>
	  </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="col_w300 float_r">
    	<h2>User Menu </h2>
            <p><a href="UserMain.jsp"><strong>Home</strong></a></p>
            <p><a href="UserProfile.jsp"><strong>My Profile</strong></a></p>
            <p><a href="SearchFriends.jsp"><strong>Search Friends</strong></a></p>
            <p><a href="U_CreateTweet.jsp"><strong>Create Tweets</strong></a></p>
            <p><a href="U_MyFriends.jsp"><strong>View My Friends</strong></a></p>
            <p><a href="ViewRequest.jsp"><strong>View Friend Requests</strong></a></p>
            <p><a href="SearchTweets.jsp"><strong>Search  Tweets and Comment </strong></a></p>
            <p><a href="U_PostedTweets.jsp"><strong>View My Tweets and Comments</strong></a></p>
            <p><a href="U_FriendsTweets.jsp"><strong>View Friend's Retweets and Give Comments </strong></a></p>
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