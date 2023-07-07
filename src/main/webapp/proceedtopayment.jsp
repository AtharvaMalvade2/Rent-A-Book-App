<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rentabook | Payment Successfull</title>
</head>
<body>
<div class="maincard" style="width: 100%;height: 20vh;display: flex;justify-content: center;">
        <div class="subcard" style="display: flex;flex-direction: column;justify-content: center;align-items: center; border: 1px solid black;gap: 20px;padding: 20px;width: 40%;">
            <p>Your Details are successfully Submitted</p>
            <form action="payment.jsp" method="post" style="display:flex;flex-direction:column;gap:25px;">
            <input placeholder="Book ID" name="book_id">
            <input type="submit" value="Proceed to Payment" style="background: black; color: white;border: none;border-radius: 5px;width: 170px;height: 30px;">
            </form>
        </div>
    </div>
</body>
</html>