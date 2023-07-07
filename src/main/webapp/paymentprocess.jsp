<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String payment_id = request.getParameter("payment_id");
String book_price = request.getParameter("book_price");
String book_id = request.getParameter("book_id");
String card_name = request.getParameter("card_name");
String card_number = request.getParameter("card_number");
String expiry_date = request.getParameter("expiry_date");
String cvv = request.getParameter("cvv");
try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin@123");

    PreparedStatement ps = con.prepareStatement("insert into payment values(?,?,?,?,?,?,?)");
    
    ps.setString(1, payment_id);
    
    ps.setString(2, book_price);

    ps.setString(3, book_id);

    ps.setString(4, card_name);

    ps.setString(5, card_number);

    ps.setString(6, expiry_date);

    ps.setString(7, cvv);

    ps.executeUpdate();

    response.sendRedirect("paymentprocess.jsp");

} catch (Exception e) {

	response.sendRedirect("paymentsuccessfull.jsp");

} 
%>
