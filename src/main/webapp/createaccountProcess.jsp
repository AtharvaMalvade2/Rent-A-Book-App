<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name = request.getParameter("user_name");
String email = request.getParameter("email_id");
String mobileno = request.getParameter("mobile_no");
String password = request.getParameter("user_password");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","admin@123");
	Statement stmt=con.createStatement();
	ResultSet rs1= stmt.executeQuery("select * from test.createaccount");
	stmt.executeUpdate("insert into test.createaccount (username,emailid,mobileno,password) values ('"+name+"','"+email+"','"+mobileno+"','"+password+"')");
	String sql="Select * from test.createaccount where username='"+name+"' and emailid='"+email+"' and mobileno='"+mobileno+"' and password='" +password+ "'";
	ResultSet rs=stmt.executeQuery(sql);
	if(rs.next())
	{
		response.sendRedirect("login.jsp");
	}
	else
	{
		response.sendRedirect("Error.jsp");
	}
} 
catch (SQLException e) {
    out.println("<h1> Error....</h1>");
}
%>
</body>
</html>