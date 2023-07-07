<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String book_id=request.getParameter("book_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin@123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addproduct WHERE book_id=" + book_id);
response.sendRedirect("productsupport.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>