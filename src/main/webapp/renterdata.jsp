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

<h1 style="text-align:center;font-size:50px;">Renter Data</h1>

<form method="post">

<table border ="0" style="width: 96%;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-left:26px;margin-right:26px;margin-top:50px;">
<tr style="width: 100%; height: 40px; border: none;margin-top:20px;">
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Renter Id</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Username</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">mobileno</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Address</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Pincode</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Book</td>
<td border="0" style="width:15%;border-collapse: collapse;border: none;">Price</td>
</tr>
</table>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="admin@123";
String query="select * from renter";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <table style="width: 96%;margin-left:26px;margin-right:26px;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-top:2rem;"><tr style="width: 100%; height: 100px; border: none;test-align:center;"><td border="0" style="width:14%;border-collapse: collapse;border: none;"><%=rs.getString("renterid") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("username") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("mobileno") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("address") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("pincode") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("book_title") %></td>
            <td border="0" style="width:15%;border-collapse: collapse;border: none;"><%=rs.getString("book_price") %></td>
            </tr></table>
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