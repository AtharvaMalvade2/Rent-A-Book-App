 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RentABook</title>
<link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
      crossorigin="anonymous"
    />
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,700;1,900&display=swap");

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

header {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  padding: 30px 5%;
}

.web_name {
  font-family: "Lato", sans-serif;
}

.search {
  height: 30px;
}

.logo {
  margin-right: auto;
  text-decoration: none;
  color: #000;
}

.nav__links {
  list-style: none;
  display: flex;
}

.nav__links a,
.cta,
.overlay__content a {
  font-family: "Lato", sans-serif;
  font-weight: 500;
  color: #000;
  text-decoration: none;
  font-size: large;
}

.nav__links li {
  padding: 0px 20px;
}

.nav__links li a {
  transition: all 0.3s ease 0s;
}

.nav__links li a:hover {
  color: #979797;
}

.cta {
  margin-left: 20px;
  padding: 9px 25px;
  background-color: rgb(255, 255, 255);
  border: none;
  border-radius: 50px;
  cursor: pointer;
  transition: all 0.3s ease 0s;
}

/* Mobile Nav */

.menu {
  display: none;
}

.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  background-color: #ffffff;
  overflow-x: hidden;
  transition: all 0.5s ease 0s;
}

.overlay--active {
  width: 100%;
}

.overlay__content {
  display: flex;
  height: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.overlay a {
  padding: 15px;
  font-size: 36px;
  display: block;
  transition: all 0.3s ease 0s;
}

.overlay a:hover,
.overlay a:focus {
  color: #0088a9;
}
.overlay .close {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  color: #000;
  cursor: pointer;
}

.search_bar_mobile {
  display: none;
  align-items: center;
}

@media screen and (max-height: 450px) {
  .overlay a {
    font-size: 20px;
  }
  .overlay .close {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}

@media only screen and (max-width: 800px) {
  .nav__links,
  .cta {
    display: none;
  }
  .menu {
    display: initial;
  }

  .search_bar {
    display: none;
  }

  .search_bar_mobile {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 5px
  }

  .search_bar__input{
      width: 85%;
      height: 40px;
  }
}

/* Carousel */

</style>
<body>
<header>
      <a class="logo" href="/"><h1 class="web_name">RentABook</h1></a>
      <div class="search_bar">
        <i class="fas fa-search magniglass fa-1x"></i>
        <input type="search" class="search" />
      </div>
      <nav>
        <ul class="nav__links">
          <li>
            <a href="./login.jsp"
              ><i class="far fa-user-circle" style="margin-right: 10px"></i
              >Login</a
            >
          </li>
        </ul>
      </nav>
      <p class="menu cta"><i class="fab fa-microsoft fa-2x"></i></p>
    </header>
    <div id="mobile__menu" class="overlay">
      <a class="close">&times;</a>
      <div class="overlay__content">
        <a href="#"
          ><i class="far fa-plus-square" style="margin-right: 10px"></i>Add
          Product</a
        >
        <a href="#"
          ><i class="fas fa-shopping-cart" style="margin-right: 10px"></i
          >Cart</a
        >
        <a href="#"
          ><i class="far fa-user-circle" style="margin-right: 10px"></i></p></a>
      </div>
    </div>
    <div class="search_bar_mobile">
      <i class="fas fa-search magniglass fa-1x" style="margin-right: 10px"></i>
      <input type="search" class="search_bar__input" />
    </div>



<form method="post">

<table border ="0" style="width: 96%;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-left:26px;margin-right:26px;">
<tr style="width: 100%; height: 70px; border: none;">
<td border="0" style="width:25%;border-collapse: collapse;border: none;">Book Title</td>
<td border="0" style="width:25%;border-collapse: collapse;border: none;">Book Description</td>
<td border="0" style="width:25%;border-collapse: collapse;border: none;">Price</td>
<td border="0" style="width:25%;border-collapse: collapse;border: none;">Rent</td>
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
    <table style="width: 96%;margin-left:26px;margin-right:26px;border-radius: 15px;border-collapse: collapse;box-shadow: 0px 1px 9px;text-align: center;margin-top:2rem;"><tr style="width: 100%; height: 200px; border: none;test-align:center;"><td border="0" style="width:25%;border-collapse: collapse;border: none;"><%=rs.getString("book_title") %></td>
            <td border="0" style="width:25%;border-collapse: collapse;border: none;"><%=rs.getString("book_description") %></td>
            <td border="0" style="width:25%;border-collapse: collapse;border: none;">&#8377;<%=rs.getString("book_price") %></td>
            <td border="0" style="width:25%;border-collapse: collapse;border: none;display:flex;flex-direction:column;justify-content:center;align-items:center;margin-top:18%;margin-left:36%;gap:1rem;"><a href="login.jsp"><button type="button" style="width:90px;height:35px;background-color:#000;color:#fff;border:none;border-radius:12px;">Rent Now</button></a></td></tr></table>
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











    <script>
      const doc = document;
      const menuOpen = doc.querySelector(".menu");
      const menuClose = doc.querySelector(".close");
      const overlay = doc.querySelector(".overlay");

      menuOpen.addEventListener("click", () => {
        overlay.classList.add("overlay--active");
      });

      menuClose.addEventListener("click", () => {
        overlay.classList.remove("overlay--active");
      });
    </script>
</body>
</html>