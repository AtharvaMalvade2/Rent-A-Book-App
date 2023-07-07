<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rentabook | Login Page</title>
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,700;1,900&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Lato", sans-serif;
}

section {
  display: flex;
  justify-content: center;
  align-items: center;
}

.main-section-div {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin-top: 9.5rem;
  margin-left: auto;
  margin-right: auto;
  gap: 8rem;
}

label {
  margin-top: 1rem;
  margin-bottom: 1rem;
}

input {
  height: 2.8rem;
  width: 20rem;
  border: 2px solid #000;
}

.login {
  margin-top: 1rem;
  background-color: #000;
  color: white;
  font-size: 1.5rem;
}

.loginside {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.divider {
  width: 2px;
  height: 400px;
  background-color: grey;
  opacity: 0.7;
}

.login-img {
  width: 35rem;
  margin-top: 3rem;
}

footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px;
  background-color: #000;
  color: white;
}

.footer_text{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    margin-top: 1rem;
    gap: 15px;
}

button{
    border: none;
    background-color: #fff;
    height: 30px;
    width: 70px;
    font-weight: 600;
    font-size: 1rem;
}

#or {
  position: relative;
  width: 300px;
  height: 50px;
  
  line-height: 50px;
  text-align: center;
}

#or::before,
#or::after {
  position: absolute;
  width: 130px;
  height: 1px;
  
  top: 24px;
  
  background-color: #aaa;
  
  content: '';
}

#or::before {
  left: 0;
}

#or::after {
  right: 0;
}

.google_auth{
  background-color: #000;
  color: #fff;
  margin-top: 1rem;
  background-color: #000;
  color: white; 
  width: 100%;
  text-align: center;
  height: 2.8rem;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 9px;
}

@media only screen and (max-width: 900px) {
  .login-img {
    display: none;
  }

  .divider {
    display: none;
  }

  section {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .loginside {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .main-section-div {
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin-top: 15rem;
    gap: 0rem;
  }

  label {
    text-align: left;
    float: left;
  }
}

</style>
<body>
<section>
      <div class="main-section-div">
        <div class="main-login-side">
          <div class="loginside">
            <h1
              style="
                text-transform: uppercase;
                font-size: 4rem;
                text-align: center;
              "
            >
              Login...
            </h1>
            <form action="loginProcess.jsp" class="loginside">
            <label>Email</label>
            <input type="email" name="emailid" />
            <label>Password</label>
            <input type="password" name="password" />
            <p>Forgot Password?</p>
            <input type="submit" value="Login" class="login" />
            </form>
          </div>
        </div>
        <div class="divider">&nbsp;&nbsp;</div>
        <div class="image">
          <img src="image/login_img.png" class="login-img" />
        </div>
      </div>
    </section>
    <footer>
      <div class="footer_text">
        <p>Don't have an account?</p>
        <button onclick="window.location.href='createaccount.jsp'">Sign Up</button>
      </div>
    </footer>
</body>
</html>