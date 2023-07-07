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
    try{
        String emailid = request.getParameter("emailid");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","admin@123");    
        PreparedStatement pst = conn.prepareStatement("Select emailid,password from createaccount where emailid=? and password=?");
        pst.setString(1, emailid);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()){           
        	response.sendRedirect("Index.jsp");
        }
        else{
        	response.sendRedirect("loginunsuccessfull.jsp");
        }
   }
   catch(Exception e){       
	   response.sendRedirect("Error.jsp");       
   }      
%>

</body>
</html>