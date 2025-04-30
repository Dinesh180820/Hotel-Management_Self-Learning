<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="WebApplication1.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            height:100%;
            margin: 0;
            padding: 0;
            background-image:url('Login%20Project/pic3.jpg');
            background-size:cover;
            font-family:sans-serif;
        }
        

        .container1 {
            width: 620px;
            margin: 50px auto;
            background-color:rgba(255,255,255,0.3);
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 6px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        .aspNetTextBox {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        input[type="submit"],
        .aspNetButton {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        .aspNetButton:hover {
            background-color: #45a049;
        }

        .form_footer {
            text-align: center;
            margin-top: 15px;
        }

        .form_footer a {
            color: #007bff;
            text-decoration: none;
        }

        .form_footer a:hover {
            text-decoration: underline;
        }

        .aspNetValidator {
            font-size: 12px;
            color: red;
        }
       .validator-message{
           color:red;
           font-size:smaller;
           margin-top:2px;
       }
       
    </style>
        <script type="text/javascript">
        function validateName(sender, args) {
            args.IsValid = /^[A-Za-z\s]+$/.test(args.Value);
        }

        function validateEmail(sender, args) {
            args.IsValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(args.Value);
        }
        function validatePhone(sender, args) {
                args.IsValid = /^[0-9]{10}$/.test(args.Value);
        }
        function validateCountry(sender, args) {
            args.IsValid = /^[A-Za-z\s]+$/.test(args.Value);
        }
        
        </script>
</head>
 <body>
    <form id="form1" runat="server">
        <div class="container1">
        <h2>Register Form</h2>
        <table>
      <tr>
           <td> <label for="TextBox1">Name </label> </td>
           <td> <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Full Name"> </asp:TextBox></td>
           <td> <div class="validator-message">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvName" runat="server" ControlToValidate="TextBox1" ClientValidationFunction="validateName" ErrorMessage="Only letters allowed"  /> </div> </td>
     </tr>

  
      <tr>
           <td> <label for="TextBox2">Email </label></td>
           <td> <asp:TextBox ID="TextBox2" runat="server" placeholder="Example@gmail.com"></asp:TextBox></td>
           <td> <div class="validator-message">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Valid Email Address" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvEmail" runat="server" ControlToValidate="TextBox2" ClientValidationFunction="validateEmail" ErrorMessage="Invalid Email" /></div> </td>
      </tr>

      <tr>
           <td> <label for="TextBox3">Phone </label></td>
           <td> 
               <div style="display:flex; align-items:center;"> 
               <asp:TextBox ID="TxtCode" runat="server" width="50px" placeholder="+91"></asp:TextBox>
           <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Number"></asp:TextBox> </div> </td>
           <td> <div class="validator-message">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Valid Number" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:CustomValidator ID="cvPhone" runat="server" ControlToValidate="TextBox3" ClientValidationFunction="validatePhone" ErrorMessage="Only 10 digits allowed"  /> </div></td>
      </tr>

      <tr>
            <td> <label for="TextBox4">Country </label></td>
            <td> <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your Country"></asp:TextBox></td>
            <td> <div class="validator-message">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Country is Required" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:CustomValidator ID="cvCountry" runat="server" ControlToValidate="TextBox4" ClientValidationFunction="validateCountry" ErrorMessage="only Letters allowed"  /> </div> </td>
          </tr>

      <tr>
            <td>  <label for="TextBox5">UserName </label></td>
            <td>  <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Username"></asp:TextBox></td>
            <td>  <div class="validator-message">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Username is Required" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:CustomValidator ID="cvUsername" runat="server" ControlToValidate="TextBox5" ErrorMessage="Username Already exists" OnServerValidate="CheckUsernameExists" ValidateEmptyText="true" Display="Dynamic"  /> </div></td>
      </tr>
      <tr>
          
            <td>  <label for="TextBox6">Password </label></td>
            <td> <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Enter Password" ></asp:TextBox></td>
            <td> <div class="validator-message">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox6" Display="Dynamic"></asp:RequiredFieldValidator> </div></td>
      </tr>

            <tr>
                <td><label for="TextBox7">ConfirmPassword </label></td>
                <td> <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" placeholder="Confirm password" ></asp:TextBox></td>
                <td> <div class="validator-message">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Confirm Your Password" ControlToValidate="TextBox7" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox7" ControlToCompare="TextBox6" ErrorMessage="Passwords do not match" ></asp:CompareValidator> </div></td>
            </tr>
      <tr>
            <td> <span>By clicking Register, you agree to our Privacy Policy</span></td>
      </tr>
      <tr>
             <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
      </tr>
    </table>
             <div class="form_footer">
                 <span> Already have an account?</span> <a href="loginform.aspx"> Login Here</a>
           </div>
      </div>
    </form>
</body>
</html>
