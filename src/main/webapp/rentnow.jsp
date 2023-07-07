<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
<title>Rentabook| Details</title>
</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Lato', sans-serif;
  }
 
  body{
    height: 60rem;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0.625rem;
    background: white;
  }
  .container{
    /* max-width: 900px; */
    max-width:70rem;
    width: 100%;
    background-color: #fff;
    /* display: flex; */
    display: grid;
    /* padding: 25px 30px; */
    padding: 1.5625rem 1.845rem;
    border-radius: 0.3125rem;
    box-shadow: 0 0.3125rem 10px rgba(0,0,0,0.15);
  }
  .container .title{
    font-size: 1.25rem;
    font-weight: 500;
    position: relative;
    margin-bottom: 2.5rem;
  }
  .container .title::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    height: 0.3125rem;
    width: 10rem;
    margin-top: 10px;
    border-radius: 5px;
    background: linear-gradient(135deg, #1f2122, #746e77);
  }

  .content form .user-details{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px 0 12px 0;
  }

  form .user-details .input-box{
      margin-bottom: 15px;
      width: calc(100% / 2 - 20px);
    }
    form .input-box span.details{
        display: block;
        font-weight: 500;
        margin-bottom: 5px;
    }
    .user-details #btitle input {
        /* height: 45px; */
        height: 3rem;
        width: 100%;
        outline: none;
        font-size: 1rem;
        border-radius: 5px;
        padding-left: 15px;
        border: 1px solid #ccc;
        border-bottom-width: 2px;
        transition: all 0.3s ease;
    }
     .user-details .input-box .price-enter input{
        height: 44px;
        width: 100%;
        outline: none;
        font-size: 16px;
        border-radius: 0px 5px 0px 0px;
        padding-left: 15px;
        border: 1px solid #ccc;
        border-width: 1px 1px 1px 0px;;
        border-bottom-width: 1px;
        transition: all 0.3s ease;
    } 
    .user-details  .disc-box{
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 16px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
      display: block;
      padding-top: 12px;
    }
  
  select{
      margin: 8px 0px 13px 0px;;
       box-shadow: 0 1px 2px rgb(0, 0, 0); 
      /* font-size: 20px; */
      padding: 5px 40px;
      border-radius: 5px;
      cursor: pointer;
  }

  .user-details .input-box .price{
    height: 45px;
    width: 100%;
    outline: none;
    font-size: 16px;
    border-radius: 5px;
    padding-left: 15px;
    border: 1px solid #ccc;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
}
.price{
  direction: ltr;
  align-items: center;
  display: flex;
  width: 100%;
}
  .price-enter .rupee input{
    height: 45px;
    width: 100%;
    outline: none;
    font-size: 16px;
    border-radius: 5px;
    padding-left: 15px;
    border: 1px solid #ccc;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
    border-color: none;
  }
  
  .price-box
  {
    border-left: none;
    border-right: 1px solid rgba(0,47,52,.36);
    padding-left: 12px;
    padding-right: 12px;
    height: 32px;
    line-height: 32px;
    white-space: nowrap;
}
  .price-enter{
    flex-grow: 1;
  }
  /* .user-details .input-box .logoimg{
    height: 45px;
    width: 100%;
    outline: none;
    font-size: 16px;
    border-radius: 5px;
    padding-left: 15px;
    border: 1px solid #ccc;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
    /* extra */
    /* direction: ltr;
    align-items: center;
    display: flex;
    width: 100%;
}  */
.logoimg .logo{
  margin-top: 24px;
    font-size: 30px;
    border: 1px solid black;
    border-radius: 4px;
    padding: 20px;
    cursor: pointer;
    justify-content: center;
    align-items: center;
    text-align: center;
}


  .btn {
    background-color: #1d1a1a;
    border: none;
    color: white;
    text-align: center;
    /* padding: 10px 32px; */
    padding: 0.7rem 3rem;
    font-size: 16px;
    border-radius: 5px;
    box-shadow: 0 1px 3px rgb(0 0 0);;
    margin: 4px 2px;
    opacity: 0.6;
    transition: 0.3s;
    display: inline-block;
    text-decoration: none;
    cursor: pointer;
  }
  
  .btn:hover {opacity: 1}




  form .user-details .input-box{
    margin-bottom: 15px;
    width: 70%;
  }
  
  /* form .category{
    width: 100%;
  } */
  /* .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  } */
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  
  @media(max-width: 584px){
  .container{
   max-width: 100%;
 }


  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  


@media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
} 
</style>
<body>
<%
String book_id = request.getParameter("book_id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="admin@123";
String query="select * from addproduct where book_id=" + book_id;
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<div class="container">
        <div class="title"><h1>CHECKOUT</h1></div>
        <form action="checkoutaction.jsp" method="post">
            <div class="user-details" >
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Username</h2></span>
                    <input type="text" placeholder="Enter username" name="username" required>
                </div>
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Mobile Number</h2></span>
                    <input type="text" placeholder="Enter mobile number" name="mobileno" required>
                </div>
                <div class="input-box">
                    
                    <span class="details"><h2>Address</h2></span>
                    <textarea class="disc-box" maxlength="4096" name="address" placeholder="Enter Book Description" style="height: 96px;" required></textarea>
                    
                    <!-- <input type="text" placeholder="Enter Book Description" required> -->  
                    
                </div>
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Pin Code</h2></span>
                    <input type="text" placeholder="Enter pin code" name="pincode" required>
                </div>
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Book Title</h2></span>
                    <input type="text" placeholder="Enter Book Title" name="book_title" readonly value="<%=rs.getString("book_title")%>">
                </div>
                
                <div class="input-box">
                    <span class="details"><h2>Price</h2></span>
                    <div class="price">
                        <div class="price-box">
                            <span>&#8377;</span>
                        </div>
                        <div class="price-enter ">
                            <input type="text" class="rupee" placeholder="" name="book_price"  readonly value="<%=rs.getString("book_price")%>">
                        </div>
                    </div>
                </div>
                
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Book ID</h2></span>
                    <input type="text" placeholder="Enter Book Title" name="bookid" readonly value="<%=rs.getString("book_id")%>">
                    <span style="display:flex;gap:20px;"><input style="width:25px;border-radius:8px;" type="checkbox" required><p>**User are requested to remember your BOOK ID incase asked further.</p></span>
                </div>
                
            </div>
            <div class="button">
                <a href="proceedtopayment.jsp?book_id=<%=rs.getString("book_id") %>"><button type="submit" class="btn">Submit</button></a>
            </div>
        </form>
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
    </div>
</body>
</html>