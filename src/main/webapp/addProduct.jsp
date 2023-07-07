<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="addproduct.css">
    <title>Rentabook | Add Product</title>
</head>
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Lato', sans-serif;
}
 
body{
    height: 180vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0.625rem;
    background: white;
}
.container{
   max-width:70rem;
    width: 100%;
    height: 170vh;
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
    width: 15rem;
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
.user-details .input-box .cust-select {
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  /* padding-left: 15px; */
  padding-left: 0px;
  /* border: 1px solid #ccc; */
  border-bottom-width: 2px;
  transition: all 0.3s ease;

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
.imgsection{
  margin: 15px 15px 40px;
}
.imgsection .logoimg{
  margin: 40px 15px 40px;
  display: inline-block;
}
.img{
  display: none;
  visibility: none;
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
  


/* @media only screen and (max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
} */
</style>
<body>
<div class="container">
        <form action="addProductProcess.jsp" method="post">
        <div class="title"><h1>PERSONAL DETAILS</h1></div>
        <div class="user-details" >
                <div class="input-box">
                    <span class="details"><h2>Username</h2></span>
                    <input type="text" class="disc-box" name="username" placeholder="Please Enter Username" required>
                </div>
                <div class="input-box">
                    <span class="details"><h2>Email Id</h2></span>
                    <input type="email" class="disc-box" name="emailid" placeholder="Please Enter emailid" required>
                </div>
                <div class="input-box">
                    <span class="details"><h2>Mobile No</h2></span>
                    <input type="text" class="disc-box" name="mobileno" placeholder="Please Enter Mobile no." required>
                </div>
            </div>
        <div class="title"><h1>PRODUCT DETAILS</h1></div>
            <div class="user-details" >
                <div class="input-box" id="btitle">
                    <span class="details"><h2>Book Title</h2></span>
                    <input type="text" placeholder="Enter Book Title/Heading" name="book_title" required>
                </div>
                <div class="input-box">
                    
                        <span class="details"><h2>Description</h2></span>
                        <textarea autocomplete="off" data-aut-id="" id="description" class="disc-box" maxlength="4096" name="book_description" placeholder="Enter Book Description" style="height: 96px;" required></textarea>
                    
                        <!-- <input type="text" placeholder="Enter Book Description" required> -->  
                        
                </div>
                <div class="input-box">
                    <div class="custom-select">
                        <span class="cust-select"><h2>Genre</h2></span>
                        <div class="c-select" required>
                        <select name="book_selection" id="" class="">
                            <option value="Select a genre">Select a genre</option>
                            <option value="Encyclopedia">Encyclopedia</option>
                            <option value="Fairy Tale">Fairy Tale</option>
                            <option value="Fiction">Fiction</option>
                            <option value="Novel">Novel</option>
                            <option value="Horror">Horror</option>
                            <option value="Mystery">Mystery</option>
                            <option value="Mythology">Mythology</option>
                            <option value="Poetry">Poetry</option>
                            <option value="Religious">Religious</option>
                            <option value="Romance">Romance</option>
                            <option value="Science">Science</option>
                            <option value="Thriller">Thriller</option>
                        </select>
                        </div>
                    </div>
                </div>
                <div class="input-box">
                    <span class="details"><h2>Set a Price</h2></span>
                    <div class="price">
                        <div class="price-box">
                            <span>&#8377;</span>
                        </div>
                        <div class="price-enter ">
                            <input type="text" class="rupee" placeholder="" name="book_price" required>
                        </div>
                    </div>
                </div>

            </div>
            <div class="button">
                <button class="btn" type="submit">Submit</button>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function getImage(imagename)
        {
            var newimg=imagename.replace(/^.*\\/,"");
            $('#displ-img').html(newimg);
        }   
    </script>
</body>
</html>