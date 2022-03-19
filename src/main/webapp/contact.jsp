<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CONTACT US</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container text-center mt-3">
		<i class="fas fa-phone-square-alt fa-5x text-success"></i>
		<h1>24* 7 Service</h1>
		<h2>Helpline Number</h2>
		<h5>+0671 1234567</h5>
	</div>
	<div class="container">
	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-6 pb-5">


                    <!--Form with header-->

                    <form id="myform" method="post">
                        <div class="card border-primary rounded-0">
                            <div class="card-header p-0">
                                <div class="bg-info text-white text-center py-2">
                                    <h3><i class="fa fa-envelope"></i> Contact Us</h3>
                                    <p class="m-0">Feel Free to contact to the developer by filling the form below</p>
                                </div>
                            </div>
                            <div class="card-body p-3">

                                <!--Body-->
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                        </div>
                                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Enter Name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                        </div>
                                        <input type="email" class="form-control" id="nombre" name="email" placeholder="Enter Email" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                        </div>
                                        <textarea class="form-control" placeholder="Enter Your Message" required></textarea>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <input type="button" value="Send Message" onclick="mail()" class="btn btn-info btn-block rounded-0 py-2">
                                </div>
                            </div>

                        </div>
                    </form>
                    <!--Form with header-->


                </div>
	</div>
</div>
<script>
       function mail() {
    	  alert("Message Has Been Sended Successfully!");
    	  document.getElementById("myForm").reset();
	}
</script>
<div style="margin-top: 171px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>