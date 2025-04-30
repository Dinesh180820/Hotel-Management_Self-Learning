<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="WebApplication1.loginform" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>Login Form</title>
    <style>
        body {
            height:100%;
            margin: 0;
            padding: 0;
        }
        body{
            background-image:url('Login%20Project/BG.jpg');
            background-size:cover;
            font-family:sans-serif;
        }

        .container {
            width: 300px;
            margin: 125px auto;
            padding: 30px;
            background-color:rgba(255,255,255,0.2);
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
            font-weight:bold;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"],
        input[type="password"],
        .aspNetTextBox {
            width: 100%;
            padding: 8px 10px;
            margin-top: 4px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .aspNetButton,
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            cursor: pointer;
        }

        .aspNetButton:hover {
            background-color: #45a049;
        }

        .form-footer {
            margin-top: 20px;
        }

        .form-footer a {
            color: #007BFF;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">
            <h2>Login</h2>
        <table>      
             <tr>
                 <td>Username </td>
                 <td>
                     <asp:TextBox ID="txtusername" runat="server" placeholder="Enter username" /></td>
            </tr>
        
            <tr>
                <td>Password</td>
                <td> <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Enter password" /></td>
            </tr>
        
            <tr>
                <td> <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
            </tr>

        </table>
              <div class="form-footer">
                    <span>Don't have an account?</span>  <a href="RegisterForm.aspx"> Register Here</a>
              </div>
         </div>
    </form>
</body>
</html>