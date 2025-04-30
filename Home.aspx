<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style>
        body{
            font-family:sans-serif;
            background-color: #fff8f0;
            margin:0;
            padding:0;
        }
        header{
            background-color:#ff6f61;
            color:white;
            padding:18px;
            text-align:center;
            position:relative;
        }
        header.img{
            height:70px;
            width:auto;
            margin-bottom:10px;
        }
        Label1{
            font-size:20px;
            color:#333;
            font-weight:bold;
            margin:10px;
            display:inline-block;
        }

        #BtnLogout{
            position:absolute;
            right:20px;
            top:20px;
            background-color:white;
            color:#ff6f61;
            border:none;
            padding:8px 12px;
            font-weight:bold;
            border-radius:4px;
        }
        .Order-button{
                background-color:#28a745;
                color:white;
                padding:10px 20px;
                border:none;
                border-radius:5px;
                margin-top:10px;
                font-size:15px;
                cursor:pointer;
                transition:background 0.3s ease;
        }
        .Order-button:hover{
            background-color:#218838;
        }
        nav{
            background-color:#ff9e80;
            padding:10px;
            text-align:center;
        }
        nav a{
            margin: 0 15px;
            color:white;
            text-decoration:none;
            font-weight:bold;
        }
        .section{
            padding:30px;
            text-align:center;
        }
        .menu-grid{
            display:flex;
            justify-content:center;
            flex-wrap:wrap;
            gap:20px;
        }
        .menu-card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            width: 200px;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(o,o,o,o.1);
        }
        .menu-card img{
            width:100%;
            height:120px;
            object-fit:cover;
            border-radius:8px;
        }
        .menu-card h3{
            margin:10px 0 5px;
        }
        footer{
            background-color:#ff6f61;
            color:white;
            padding:15px;
            text-align:center;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <header id="home">
             <img src="Login%20Project/logo.png" alt="DarkDevil Logo"/>"
             <h1>Welcome to DarkDevil Restuarant</h1>
             <p> Delicious Food & cozy vibes</p>
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             <asp:Button ID="BtnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click" />
        </header>
       
        <nav>
             <a href="#home">Home</a>
             <a href="#menu">Menu</a>
             <a href="#about">About Us</a>
             <a href="#contact">Contact</a>
        </nav>
         <asp:Label ID="lblMessage" runat="server" Forecolor="Green" Font-Bold="true"></asp:Label>
        <div class="section" id="menu">
            <h2>Our Menu</h2>
            <div class="menu-grid">
                <div class="menu-card">
                    <img src="Login%20Project/idly.jpg" alt="Idli" />
                    <h3>Idli </h3>
                    <p>$5</p>
                    <asp:Button ID="ButtonIdli" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonIdli_Click"/>
                </div>
                <div class="menu-card">
                     <img src="Login%20Project/dosai.jpg" alt="Spl Dosai" />
                     <h3>Spl Dosai</h3>
                     <p>$7</p>
                  <asp:Button ID="ButtonDosai" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonDosai_Click"/>
                </div>
                <div class="menu-card">
                     <img src="Login%20Project/masaladosai.jpg" alt="Masal Dosai" />
                     <h3>Masal Dosai</h3>
                     <p>$8</p>
                    <asp:Button ID="ButtonMDosai" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonMDosai_Click"/>
                </div>
                <div class="menu-card">
                      <img src="Login%20Project/chapathi.jpg" alt="Chapathi" />
                      <h3>Chapathi</h3>
                      <p>$6</p>
                  <asp:Button ID="ButtonChapathi" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonChapathi_Click"/>
                </div>
                <div class="menu-card">
                      <img src="Login%20Project/parotto.jpg"alt="Parotto" />
                      <h3>Parotto</h3>
                      <p>$9</p>
                    <asp:Button ID="ButtonParotto" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonParotto_Click"/>
                </div>
                <div class="menu-card">
                      <img src="Login%20Project/pannerbutter.jpg" alt="PannerButter Masala" />
                      <h3> PannerButter Masala</h3>
                      <p>$13</p>
                    <asp:Button ID="ButtonPanner" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonPanner_Click"/>
                </div>
                <div class="menu-card">
                     <img src="Login%20Project/cgravy.jpg" alt="Chicken Gravy" />    
                     <h3>Chicken Gravy</h3>
                     <p>$14</p>
                    <asp:Button ID="ButtonGravy" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonGravy_Click"/>
                </div>
                <div class="menu-card">
                       <img src="Login%20Project/vegbriyani.jpg" alt="Veg Briyani" />
                       <h3>Veg Briyani</h3>
                       <p>$10</p>
                    <asp:Button ID="ButtonVBriyani" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonVBriyani_Click"/>
                </div>
                <div class="menu-card">
                       <img src="Login%20Project/briyani.jpg" alt="Chicken Briyani" />
                       <h3>Chicken Briyani</h3>
                       <p>$12</p>
                     <asp:Button ID="ButtonCBriyani" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonCBriyani_Click"/>
                </div>
                <div class="menu-card">
                       <img src="Login%20Project/souththali.jpg"  alt="SouthIndian Thali" />
                       <h3>SouthIndian Thali</h3>
                       <p>$15</p>
                    <asp:Button ID="ButtonThali" runat="server" Text="Order Now" CssClass="Order-button" OnClick="ButtonThali_Click"/>
                </div>
            </div>
        </div>
        <div class="section" id="about">
            <h2>About Us</h2>
            <p> We're a Family-Run Restaurant Serving Homemade Meals with a Touch of Love</p>
        </div>
        <div class="section" id="contact">
            <h2>Contact Us</h2>
            <p>Location: Chennai,Bangalore</p>
            <p>Email: info@darkdevil.com </p>
            <p>Phone: +91 98765 43210 </p>
        </div>
        <footer>
            &copy;2025 DarkDevil.All Rights Reserved.
        </footer>
    </form>
</body>
</html>
