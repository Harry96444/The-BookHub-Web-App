<%@page import="com.entity.userDtls"%>
<%
userDtls user1=(userDtls)session.getAttribute("admin");
if(user1==null)
{
	response.sendRedirect("../login.jsp");
}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME TO ADMIN PANEL</title>
<%@include file="allCss_file.jsp"%>
<style type="text/css">

a{
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
}

</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
<br>
	<p align="center">
	  <button type="button" class="btn btn-danger btn-lg">WELCOME TO ADMIN MODULE</button>
	</p>
	<div class="container">
	<br>
        <div class="row">
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="../img/addBooks.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Add New Books</h5>
                        <p class="card-text">You can Add New Books Here in different categories and make it available for the user for Buying.</p>
                        <a style='color:black;' href="add_books.jsp" class="btn btn-warning btn-rounded">Click here to Add Books</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="../img/show.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Show All Books</h5>
                        <p class="card-text">You can see all books here and Edit it or Delete it according to the Stock Available.</p>
                        <a style='color:black;' href="all_books.jsp" class="btn btn-warning btn-rounded">Change here to see All books</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="../img/orderss.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">All Orders</h5>
                        <p class="card-text">You can see all the orders here that the user has ordered and You can Manage them and Analyse the User needs.</p>
                        <a style='color:black;' href="all_order.jsp" class="btn btn-warning btn-rounded">Show All Orders</a>
                    </div>
                </div>
            </div>
        </div>   
        <br>
         <div class="row">
            <div class="col-sm-4 py-3 py-sm-0">
                
            </div>
            <div class="col-sm-4 py-3 py-sm-0">
                <div class="card box-shadow">
                    <img src="../img/security.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Logout</h5>
                        <p class="card-text">You can Logout of the admin module from here.</p>
                        <a  href="#" data-toggle="modal" data-target="#lgBtn" class="btn btn-danger btn-rounded">Logout</a>
                    </div>
                </div>
            </div>
             <div class="col-sm-4 py-3 py-sm-0">
               
            </div>
        </div>   
		</div>
	</div>
	
	<!-- Start Edit Button Modal -->
			<div class="modal fade" id="lgBtn" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header bg-primary">

						<%-- 	<%
							if (user != null) {
							%>

							<h5 class="modal-title text-center text-white"
								id="exampleModalLongTitle"><%=user.getName()%></h5>

							<%
							}
							%> --%>


							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body text-center">
							<h5>Do You Want Logout</h5>
						</div>
						<div class="text-center p-3">
							<a href="../AdminLogoutServlet" class="btn btn-primary">Logout</a> <a
								type="button" class="btn btn-success" data-dismiss="modal">Close</a>

						</div>
					</div>
				</div>
			</div>
			<!--End Edit Button Modal -->
	

<div style="margin-top: 30px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>