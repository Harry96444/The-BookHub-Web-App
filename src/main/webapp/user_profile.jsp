<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER : HOME</title>
<%@include file="all_component/allCss_file.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<%
	if (user == null) {
		session.setAttribute("errorMsg", "Please Login..");
		response.sendRedirect("login.jsp");
	} else {
	%>
	<p align="center">
	  <button type="button" class="btn btn-danger btn-lg">WELCOME <%=user.getName().toUpperCase()%></button>
	</p>
	
	<%
	}
	%>
	
	<div class="container">
	<br>
        <div class="row">
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/sell.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Sell Old Book</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a style='color:black;' href="sell_book.jsp" class="btn btn-warning btn-rounded">Click here to sell</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/sec.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Login and Security</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a style='color:black;' href="edit_profile.jsp" class="btn btn-warning btn-rounded">Change login details</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/add.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Address</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a style='color:black;' href="user_address.jsp" class="btn btn-warning btn-rounded">Manage Address</a>
                    </div>
                </div>
            </div>
        </div>   
        <br>
         <div class="row">
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/orderss.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">My Orders</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="user_order.jsp" class="btn btn-danger btn-rounded">Manage Orders</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/help.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Help Center</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="contact.jsp" class="btn btn-danger btn-rounded">Help and Support</a>
                    </div>
                </div>
            </div>
             <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="img/cart.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Your Cart</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="checkout.jsp" class="btn btn-danger btn-rounded">Go to cart</a>
                    </div>
                </div>
            </div>
        </div>   
		</div>
	</div>
	<div style="margin-top: 171px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>