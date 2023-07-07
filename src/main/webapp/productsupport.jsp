<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rentabook | Admin | Renter</title>
</head>
<body>
<form method="post">

<table border ="0" style="width: 96%;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-left:26px;margin-right:26px;">
<tr style="width: 100%; height: 70px; border: none;">
<td border="0" style="width:20%;border-collapse: collapse;border: none;">Book Id</td>
<td border="0" style="width:20%;border-collapse: collapse;border: none;">Book Title</td>
<td border="0" style="width:20%;border-collapse: collapse;border: none;">Book Description</td>
<td border="0" style="width:20%;border-collapse: collapse;border: none;">Price</td>
<td border="0" style="width:20%;border-collapse: collapse;border: none;">Edit</td>
</tr>
</table>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="admin@123";
String query="select * from addproduct";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <table style="width: 96%;margin-left:26px;margin-right:26px;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-top:2rem;">
    <tr style="width: 100%; height: 200px; border: none;test-align:center;">
    <td border="0" style="width:20%;border-collapse: collapse;border: none;"><%=rs.getString("book_id") %></td>
    <td border="0" style="width:20%;border-collapse: collapse;border: none;"><%=rs.getString("book_title") %></td>
            <td border="0" style="width:20%;border-collapse: collapse;border: none;"><%=rs.getString("book_description") %></td>
            <td border="0" style="width:20%;border-collapse: collapse;border: none;">&#8377;<%=rs.getString("book_price") %></td>
            <td border="0" style="width:20%;border-collapse: collapse;border: none;display:flex;flex-direction:column;justify-content:center;align-items:center;margin-top:18%;margin-left:36%;gap:1rem;">
            <a href="deletecontent.jsp?book_id=<%=rs.getString("book_id") %>"><button type="button" class="delete">Delete</button></a>
            </td></tr></table>
        <%
}
%>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>

</form>









</body>
</html>