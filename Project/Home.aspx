<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project.Home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>DoChat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
     <style>
          #Button2{
             background-color:rgb(255 255 255);
             border:none;
             font-weight:bold;
             font-size:2rem;
         }
         #Button2:hover{
             color:rgb(90, 90, 90);
             font-size:2.2rem;
         }
      
         #form1{
              justify-content:center;
         }
         .search{
            grid-column: 3/4;
            font-size: 2.5rem;
            align-items: center;
            display: flex;
            justify-content:start;
            align-items: center;
            list-style-type: none;
        }
        #searchimg
        {
           
            height:2rem;
            width:2rem;
            
        }
        #searchbar
         {
           color:rgba(0,0,0, 0.7);
           background-color:white;
           width:0rem;
           opacity: 0;
           height:4rem;
           border-radius: 50px;
           font-size: 2.4rem;
           margin-left: 0%;
           outline: none;
           font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight: bold;
           border: none;
           transition: opacity 1.5s , width 1.5s,margin-left 1.5s;
         }
        ::placeholder
         {
            font-size: 1.8rem;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            opacity:0.9 ;
         }
        .chatsection {
            width:100%;
            height:50%;
            display: grid;
            grid-template-columns:1rem  1fr 3fr 5rem ;
         
        }
        .ulist {
            display: grid;
            grid-column: 2/3;
            font-size: 1rem;
            justify-content: start;
            align-items: center;
             border-radius:18px;
              background-color:rgba(200,200,200,0);
        }
        .chats{
            display:grid;
            grid-column:3/4;
            background-color:white; /*rgba(185, 185, 185,0.25);*/
            border-radius:18px;
            height:50rem;
            box-shadow: -2px -2px 2px rgba(0,0,0, 0.2),
                0px 0px .5px rgba(255,255,255, 0.2),
                inset -2px -2px 2px rgba(0,0,0, 0.2),
               inset  0px 0px .5px rgba(255,255,255, 0.2);
        }
        .sub-nav{
            width: 100%;
            height: 9rem;
            display: grid;
            grid-template-columns: 1rem 1fr 3fr 1fr 1rem;
        }
        .r_dp
        {
                display: grid;
                grid-column: 2/3;
                font-size: 2rem;
                justify-content: space-around;
                align-items: center;
        }
        .r_name{
             display: grid;
                grid-column: 3/4;
                font-size: 2rem;
                justify-content: start;
                align-items: center;
        }
        .del_chat
        {
             display: grid;
                grid-column: 4/5;
                font-size: 2rem;
                justify-content: center;
                align-items: center;
                 display:inline;
        }
        #dp{
            height:5rem;
            width:5rem;
            border-radius:50%;
        }
        #ftr{
            position:relative;
           
           /* bottom:5rem;
            left:10rem;*/
        }
        #message{
            position:absolute;
            left:15rem;
            border:none;
            border-radius:30px;
            background-color:rgba(170, 170, 170,0.3);
            outline:none;
            width:50rem;
            height:4rem;
             bottom:0;
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-size:2.5rem;

        }
        #Button3
        {
            position:absolute;
            left:66.5rem;
            height:4rem;
            width:4rem;
            bottom:0;
             border:none;
            border-radius:50%;
             background-color:rgba(170, 170, 170,0.3);
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-size:2.5rem;
             
            padding:10px;
              transform:rotate(45deg);
        }
        #Button4
        {
             border:none;
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-size:1.75rem;
            background-color:white;
            margin-top:2rem;
            
        }
         #Button4:hover
         {
             font-size:2rem;
             color:lightcoral;
            

         }
         #trash_icon
         {
            
         }
        .msgs{
            overflow-y:scroll;
            height:87%;
        }
        ::-webkit-scrollbar{
            width:3rem;
        }
        #GridView1{
          margin-left:5rem;
           width:500px;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:300;
           color:black;
           font-size:1.8rem;
          

        }
       .unamelbl{
            font-size:1rem;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:400;
        }
        #Label4{
             font-size:3rem;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:400;
        }
     
      #ImageButton1
      {
          position:absolute;
          right:7rem;
           border-radius:50%;
           height:1.8rem;
           width:1.8rem;
          
      }
       #ImageButton1:hover{
           background-color:lightblue;
           
           height:2.2rem;
           width:2.2rem;
        }
      #Label2
       {
          width:12rem;
          align-content:center;
            font-size:3rem;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:400;
           margin-left:3rem;
           border:1.5px solid black;
           border-radius:30px;
       }
       #online
       {
           
            font-size:1.5rem;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:300;
           margin-left:1.7rem;
       }
        
        #acc{
            display:none;
        }
        #acclink{
             background-color:rgb(255 255 255);
             border:none;
             font-weight:bold;
             font-size:2rem;
             
         }
         #acclink:hover{
             color:rgb(90, 90, 90);
             font-size:2.2rem;
         }
          #lbl{
           font-size:2.5rem;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-weight:500;
       }
       .form-control-placeholder
       {
           font-size:1.6rem;
          
           
       }
     </style>
    <link rel="stylesheet" href="css/homepage.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js" integrity="sha512-rMGGF4wg1R73ehtnxXBt5mbUfN9JUJwbk21KMlnLZDJh7BkPmeovBuddZCENJddHYYMkCh9hPFnPmS9sspki8g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" integrity="sha512-yVvxUQV0QESBt1SyZbNJMAwyKvFTLMyXSyBHDO4BG5t7k/Lw34tyqlSDlKIrIENIzCl+RVUNjmCPG+V/GMesRw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
</head>
<body>
    <form id="form1" runat="server">
       
        <nav class="main-nav">
            <div class="logo">
                <h1>D o C h a t</h1>
            </div>
            <div class="search">
              <asp:TextBox ID="searchbar" placeholder="Search Freinds" runat="server" onkeyup="search_frnds()"></asp:TextBox><img src ="images/search.svg" alt="Search" id="searchimg" onclick="openSearch()" />
            </div>
            <div class="menu-link">
                <ul>
                    <li>
                       
                        <button id="acclink" type="button" onclick="openAccount()">Account</button>
                    </li>
                    <li>
                         <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="logout" />
                    </li>
                    
                </ul>
             </div>
         </nav>

        <div class="chatsection">
        
         <div class="ulist">

             <asp:DropDownList ID="send_to" runat="server" DataSourceID="ChatDatabase" DataTextField="username" DataValueField="username"   AutoPostBack="True" OnSelectedIndexChanged="send_to_SelectedIndexChanged">
                   <asp:ListItem runat="server" DataSourceID="ChatDatabase"></asp:ListItem>
              </asp:DropDownList>
             
              <asp:Label ID="Label2" runat="server"></asp:Label>
             <label id="online">Users Online: <%=Application["UsersOnline"] %></label> <br />
          
              

              
            
              
              
         </div>

        <div class="chats">
             
             <nav class="sub-nav">
                <div class="r_dp">
                    <image id="dp" src="images/logo.png"></image>
                </div>
               
                <div class="r_name">

                    <asp:Label runat="server" ID="Label14"></asp:Label>
                    <asp:Label runat="server" class="unamelbl" ID="Label13"></asp:Label>
                    
                 </div>
                 <div class="del_chat">
                      <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Delete Chat" /><img id="trash_icon" src="images/trash.svg"/><br />
                     
                    
                 </div>
              </nav>
            
            <div  class="msgs">
                <asp:ImageButton ID="ImageButton1" runat="server"  OnClick="send_to_SelectedIndexChanged" ImageUrl="images/reboot.svg" />
                <asp:Label ID="lable53" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" Height="134px" Width="800px" >
                 
                     <RowStyle BackColor="#6699ff"  />
                    
              </asp:GridView>

            
            </div>
           
           
              
            <footer id="ftr">
                <asp:TextBox ID="message" runat="server" placeholder="Message . ."></asp:TextBox>
               <asp:ImageButton runat="server" ID="Button3" OnClick="send_message" ImageUrl="images/send.svg"/>
            </footer>
              

              <asp:SqlDataSource ID="ChatDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username] FROM [Users] WHERE ([username] NOT LIKE '%' + @username + '%')">
                  <SelectParameters>
                      <asp:SessionParameter DefaultValue="NULL" Name="username" SessionField="username" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <br />
        </div>
         <div id="acc">
              

       
        <div class="form-group form-group-sm">
        <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div  class="col-sm-12 col-sm-11">
            <div  class="card text-black" style="border-radius: 25px;">
              <div id="sign-page" class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-sm-6 col-xl-5 order-2 order-lg-1">

                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Your Profile</p>

                   

                      <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div id="lbl" class="form-outline flex-fill mb-0">
                            <label  class="form-control-placeholder" for="Username">Username</label><br />
                            <asp:Label ID="Label51" runat="server"></asp:Label>
                        </div>
                      </div>

                       <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div id="lbl" class="form-outline flex-fill mb-0">
                            <label class="form-control-placeholder" for="name">Name </label><br />
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </div>
                      </div>
                        
                       <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div id="lbl" class="form-outline flex-fill mb-0">
                                <label class="form-control-placeholder" for="dob">DOB</label><br />
						        <asp:Label ID="Label31" runat="server"></asp:Label>
                        </div>
                      </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                       
                        <div id="lbl" class="form-outline flex-fill mb-0">
                                <label class="form-control-placeholder" for="email">Email</label><br />
						        <asp:Label ID="Label61" runat="server"></asp:Label>
                        </div>
                      </div>
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
          
   
               
         </div>
      </div>
       <script>

           $('#<%=send_to.ClientID%>').chosen();
       </script>
           
    </form>
</body>
    <script type="text/javascript">
        var z = 1;
        function openAccount()
        {
            var x = document.getElementById("acc");
            var y = document.querySelector(".chats");
            var w = document.getElementById("acclink");


            if (z == 1) {
                y.style.display = "none";
                x.style.display = "block";
                w.innerText = "Home";
                z = 0;
            }
            else {
                x.style.display = "none";
                y.style.display = "initial";
                w.innerText = "Account";
                z = 1;
            }
           
        }



        var h = 1
        function openSearch() {
            document.getElementById("searchbar").focus();//autofocus = true;
            if (h == 1) {
                document.getElementById("searchbar").style.opacity = 1;
                document.getElementById("searchbar").style.width = "14rem";
                document.getElementById("searchbar").style.marginLeft = "20%";
                h = 0
            }
            else {
                document.getElementById("searchbar").style.opacity = 0;
                document.getElementById("searchbar").style.width = "0rem";
                document.getElementById("searchbar").style.marginLeft = "0rem";
                h = 1
            }

        }

        function search_frnds() {
            let input = document.getElementById('searchbar').value;
            input = input.toLowerCase();
            let x = document.getElementsByClassName("user_list");
            for (i = 0; i < x.length; i++) {
                if (!x[i].innerHTML.toLowerCase().includes(input)) {
                    x[i].style.display = "none";
                   
                   
                }
                else {
                   
                    x[i].style.display = "list-item";
                    x[i].style.listStyleType = "none";
                }
            }
        }


        /*function dpu(ddl)
        {
            //onchange="dpu(this)"
            var id = ddl.id;
            var selval = ddl.value;

            document.getElementById('Label12').textContent = selval;
        }*/
       

    </script>
</html>
