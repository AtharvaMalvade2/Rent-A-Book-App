<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rentabook | Support</title>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,400&display=swap");
*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Roboto", sans-serif;
}

.container {
  position: absolute;
  width: 100%;
  height: 100vh;
  background: #2c302d;
}

.card {
  width: 60%;
  height: 80%;
  max-height: 300px;
  padding: auto;
  text-align: center;
  background: #242625;
  border-radius: 10px;
  box-shadow: 25px 25px 50px #1b1c1b, -25px -25px 50px #2d302f;
}
.card__container {
  display: grid;
  width: 100%;
  height: 100%;
  grid-template-columns: 1fr 1fr 1fr;
  align-items: center;
  justify-items: center;
  color: white;
}
.card__content {
  width: 90%;
  height: 95%;
  background: #191a19;
  margin: 10px auto;
  border-radius: 5px;
  padding: 20px;
  cursor: pointer;
  box-shadow: 16px 16px 44px #0a0a0a, -16px -16px 44px #282a28;
  transition: 0.3s all ease-in-out;
}
.card__content:hover {
  margin-top: -10px;
}
.card__header {
  text-transform: uppercase;
  font-size: 20px;
  margin: 40px auto;
}
.card__button {
  padding: 10px;
  border-radius: 50px;
  background: #ffffff;
  color: black;
  font-weight: bold;
  cursor: pointer;
  border: none;
  margin: 50px auto;
}
@media only screen and (max-width:700px){
    .card{
        display: flex;
        flex-direction: column;
    }
}

</style>
<body>
    <div class="container">
        <div class="card__container">
          <div class="card">
            <div class="card__content">
              <h3 class="card__header">Products</h3>
              <p class="card__info"></p>
              <button class="card__button" type="button" onclick="window.location.href='productsupport.jsp';">View Data</button>
            </div>
          </div>
          <div class="card">
            <div class="card__content">
              <h3 class="card__header">Givers</h3>
              <p class="card__info"></p>
              <button class="card__button" onclick="window.location.href='giverdata.jsp';" >View Data</button>
            </div>
          </div>
          <div class="card">
            <div class="card__content">
              <h3 class="card__header">Renters</h3>
              <p class="card__info"></p>
              <button class="card__button" onclick="window.location.href='renterdata.jsp';">View Data</button>
            </div>
          </div>
        </div>
      </div>
</body>
</html>