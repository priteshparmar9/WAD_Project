<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Login.aspx.cs" Inherits="ChattingApp.Login" %>


<!doctype html>
<html lang="en">
  <head>
	  <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--<link rel="stylesheet" href="css/style.css">-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/homepage.css" />
      <style>
          .form-control-placeholder,.form-control
          {
              font-weight:600;
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
              font-size:1.5rem;
          }
          .text-black{
              font-size:1.5rem;
          }
      </style>
  </head>
	<body>
         <nav class="main-nav" >
            <div class="logo">
                <h1>D o C h a t</h1>
            </div>
           
         </nav><br />
	
        <div class="form-group form-group-sm">
        <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div  class="col-sm-12 col-sm-11">
            <div  class="card text-black" style="border-radius: 25px;">
              <div id="sign-page" class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-sm-6 col-xl-5 order-2 order-lg-1">

                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Log In</p>

                    <form class="mx-1 mx-md-4" runat="server">

                      <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div class="form-outline flex-fill mb-0">
                            <label class="form-control-placeholder" for="Username">Username</label>
                         <asp:TextBox class="form-control" required ID="Username" runat="server"></asp:TextBox>

                        </div>
                      </div>
                        
                       <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div class="form-outline flex-fill mb-0">
                                <label class="form-control-placeholder" for="Password">Password</label>
						<asp:TextBox ID="Password" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
                        </div>
                      </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                        <div class="form-outline flex-fill mb-0">
                             <asp:Button ID="Button5" class="form-control btn btn-primary rounded submit px-3" runat="server" OnClick="login" Text="Login" />
                        </div>
                      </div>
                 
                     

                      <p class="text-center"> New user ? Create an Account  <asp:HyperLink ID="signuplink" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink></p>


                   

                    </form>

                  </div>
                  <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                      class="img-fluid" alt="Sample image">

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>


	<!--<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>-->

	</body>
</html>

