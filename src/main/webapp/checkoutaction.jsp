<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String bookid = request.getParameter("bookid");
String renterid = request.getParameter("renterid");
String username = request.getParameter("username");
String mobileno = request.getParameter("mobileno");
String address = request.getParameter("address");
String pincode = request.getParameter("pincode");
String book_title = request.getParameter("book_title");
String book_price = request.getParameter("book_price");
try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin@123");

    PreparedStatement ps = con.prepareStatement("insert into renter values(?,?,?,?,?,?,?,?)");
    
    ps.setString(1, renterid);

    ps.setString(2, username);

    ps.setString(3, mobileno);

    ps.setString(4, address);

    ps.setString(5, pincode);

    ps.setString(6, book_title);

    ps.setString(7, book_price);
    
    ps.setString(8,bookid);

    ps.executeUpdate();

    response.sendRedirect("proceedtopayment.jsp");

} catch (Exception e) {

    out.println(e);

} 
%>
