<%@ page language="java" import="java.io.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    response.setContentType("text/html");
    PrintWriter o=response.getWriter();
    String e=request.getParameter("email");
    String p=request.getParameter("pwd");
    String cp=request.getParameter("cpwd");
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		PreparedStatement ps=c.prepareStatement("select email,pwd from jplogin where email=? and pwd=?");
		ps.setNString(1,e);
		ps.setNString(2,p);
		ResultSet rs=ps.executeQuery();
		System.out.println("Login Success");
		/*
		PreparedStatement ps1=c.prepareStatement("select * from jp order by date desc");
		ResultSet r=ps1.executeQuery();	 
		o.print("<table width=50% border=1>");  
		o.print("<caption>Result:</caption>"); 
		ResultSetMetaData rsmd=rs.getMetaData();  
		int total=rsmd.getColumnCount();  
		o.print("<tr>");  
		for(int k=1;k<=total;k++)  
		{  
		 o.print("<th>"+rsmd.getColumnName(k)+"</th>");  
		}  
		o.print("</tr>");    
		while(rs.next())  
		{  
		 o.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");  
		}  
		o.print("</table>");  */
    }
    catch(Exception ex)
    {
    	System.out.println(ex);
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Employee Application Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-1.12.0.min.js"></script>
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
	<div class="main">
		<h1>Login Form</h1>
		<div class="w3_agile_main_grids">
			<div class="agileits_w3layouts_main_grid">
				<form id="upload" action="JList" method="post" enctype="multipart/form-data">
					<div class="agile_main_grid_left">
						<div class="w3_agileits_main_grid_left_grid">
							<h3>Login Here :</h3>
							<input type="email" name="email" placeholder="Email" required="">
							<input type="password" name="pwd" id="password1" placeholder="Password" required="">
							<input type="password" name="cpwd" id="password2" placeholder="Confirm Password" required="">
							
						</div>
						<div class="w3_agileits_qualifications">
							
							
						</div>
					</div>
					
					<div class="clear"> </div>
					<input type="submit" value="Submit Application">
				</form>
			</div>
		</div>
		<div class="agileits_copyright">
			<p>© 2017 Employee Application Form. All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
		</div>
	</div>
	<script src="js/filedrag.js"></script>
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword(){
			var pass2=document.getElementById("password2").value;
			var pass1=document.getElementById("password1").value;
			if(pass1!=pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');	 
				//empty string means no validation error
		}
	</script>
	<!-- start-date-piker-->
		<script src="js/jquery-ui.js"></script>
		<script>
			$(function() {
			$( "#datepicker" ).datepicker();
			});
		</script>
	<!-- //End-date-piker -->
</body>
</html>