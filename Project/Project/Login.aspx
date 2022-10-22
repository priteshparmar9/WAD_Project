<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChattingApp.Login" %>



<!doctype html>
<html lang="en">
  <head>
	  <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<form id="form1" runat="server">

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<div class="img" style="background-image: url(images/bg-1.jpg);"></div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
								
			      	</div>
							<form action="#" class="signin-form">
			      		<div class="form-group mt-3">
							  <asp:TextBox class="form-control" required ID="Username" runat="server"></asp:TextBox>
			      			<label class="form-control-placeholder" for="Username">Username</label>
			      		</div>
		            <div class="form-group">
		    
		              <label class="form-control-placeholder" for="Password">Password</label>
						<asp:TextBox ID="Password" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
		              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
		            </div>
		            <div class="form-group">
						<asp:Button ID="Button2" class="form-control btn btn-primary rounded submit px-3" runat="server" OnClick="login" Text="Login" />
		            </div>
		            
		          </form>
		          <p class="text-center">Not a member? <a data-toggle="tab" href="../signup.aspx">Sign Up</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
		</form>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

