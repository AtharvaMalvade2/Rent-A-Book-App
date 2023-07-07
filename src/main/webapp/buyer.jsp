<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String book_id=request.getParameter("buyer_id");
String book_title=request.getParameter("book_title");
String book_description=request.getParameter("book_description");
String book_selection=request.getParameter("book_selection");
String book_price=request.getParameter("book_price");
String img_one=request.getParameter("img_one");
String img_two=request.getParameter("img_two");
String img_three=request.getParameter("img_three");
String img_four=request.getParameter("img_four");
String username = request.getParameter("username");
String emailid = request.getParameter("emailid");
String mobileno = request.getParameter("mobileno");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin@123");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into test.addproduct(book_title,book_description,book_selection,book_price,img_one,img_two,img_three,img_four,username,emailid,mobileno) values('"+book_title+"','"+book_description+"','"+book_selection+"','"+book_price+"','"+img_one+"','"+img_two+"','"+img_three+"','"+img_four+"','"+username+"','"+emailid+"','"+mobileno+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
