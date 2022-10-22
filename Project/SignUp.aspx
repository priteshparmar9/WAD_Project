<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="SignUp.aspx.cs" Inherits="ChattingApp.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    
   <!--<link rel="stylesheet" href="css/signup.css" />-->
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/homepage.css" />
    <style>
        #Label1,#Label21,#Label3,#Label41,#Label5,#Label6,#loginlink,.text-center
        {
            font-size:1.75rem;
            font-weight:400;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .form-control
        {

         font-size:1.5rem;
            font-weight:600;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
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

                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                    <form class="mx-1 mx-md-4" runat="server">

                        <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <asp:Label  ID="Label6" runat="server" Text="Name"></asp:Label>
                          <asp:TextBox class="form-control" ID="name" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="* Name Required" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                          
                        </div>
                            </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <asp:Label  ID="Label5" runat="server" Text="Username"></asp:Label>
                          <asp:TextBox class="form-control" ID="usernameIn" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameIn" Display="Dynamic" ErrorMessage="* Username Required" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="usernameIn" Display="Dynamic" ErrorMessage="* enter valid username" ForeColor="#FF5050" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9][.a-zA-Z0-9]{3,18}[a-zA-Z0-9]$"></asp:RegularExpressionValidator>
                        </div>

                      </div>

               

                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                            <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="passwordIn" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordIn" Display="Dynamic" ErrorMessage="*Password Required" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="passwordIn" Display="Dynamic" ErrorMessage="*Password must contain a special character, a small alphabet, a capital alphabet, a number and length should be minimum of 8 characters" ForeColor="#FF5050" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>
                        </div>
                      </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                          <asp:TextBox ID="re_passwordIn" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="re_passwordIn" Display="Dynamic" ErrorMessage="*Required" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordIn" ControlToValidate="re_passwordIn" Display="Dynamic" ErrorMessage="*Should match as password" ForeColor="#FF5050" SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                      </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="emailIn" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailIn" Display="Dynamic" ErrorMessage="*Required" ForeColor="#FF5050" SetFocusOnError="True"></asp:RequiredFieldValidator>
                      
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="emailIn" ErrorMessage="*Email invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                      </div>

                        <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <asp:Label ID="Label41" runat="server" Text="Birth Date"></asp:Label>
                          <asp:TextBox ID="bdate" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                      </div>

                 

                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" OnClick="signUp" Text="Sign Up" />
                      </div>

                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                       <p class="text-center"> Already have an Account ? <asp:HyperLink ID="loginlink" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink> </p>
                      </div>

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

       

        
   
</body>
</html>





