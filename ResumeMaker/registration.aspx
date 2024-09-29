<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Resume_Maker.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	<title>Registration</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/img/favicon.svg"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../assets/login/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../assets/login/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="../assets/login/css/main.css"/>
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
    
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<form id="form1" runat="server" class="login100-form validate-form" >
					<span class="login100-form-title p-b-43"> 
                    ReSuMe MaKeR 

						 <asp:HiddenField ID="hdnId" runat="server" />
					</span> 
					
                    <div class="wrap-input100">
						<asp:TextBox ID ="txtFirstName" runat="server" CssClass="input100" placeholder="User Name"></asp:TextBox>

						<asp:RequiredFieldValidator ID="UserNameRequired1" runat="server" ControlToValidate="txtFirstName"
						 ErrorMessage="User Name is required." ToolTip="User Name is required." ForeColor="Red" Display = "Dynamic">
						</asp:RequiredFieldValidator>
						
					</div>
                    
                    <div class="wrap-input100">
						<asp:TextBox ID ="txtLastName" runat="server" CssClass="input100"  placeholder="Last Name" ></asp:TextBox>
						
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName"
						 ErrorMessage="Last Name is required." ToolTip="Last Name is required." ForeColor="Red" Display = "Dynamic">
						</asp:RequiredFieldValidator>
					</div>

					<div class="wrap-input100">
						<asp:TextBox ID ="txtEmail" runat="server" CssClass="input100" placeholder="Email-Id "></asp:TextBox>
						
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
							ControlToValidate="txtEmail" ForeColor="Red" 
							ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
							Display = "Dynamic" ErrorMessage = "Invalid email address"/>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
						ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" />
					</div>
					
					
					<div class="wrap-input100">
						<asp:TextBox ID ="txtPassword" runat="server" CssClass="input100" placeholder="Password" TextMode="Password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
						ControlToValidate="txtPassword" ErrorMessage="This Field can not be blank."></asp:RequiredFieldValidator>
					</div>

                    <div class="wrap-input100">
						<asp:TextBox ID ="txtConfirmPassword" runat="server" CssClass="input100" placeholder=" Confirm_Password"></asp:TextBox>
						<asp:CompareValidator ID="CompareValidator1" runat="server" 
						ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
						ErrorMessage="Password does not match."></asp:CompareValidator>
					</div> 
					<div class="container-Register100-form-btn">						
					<asp:Button ID="btnRegistration" runat="server" CssClass="login100-form-btn" Text="Registration" ValidationGroup="Save" OnClick="btnRegistration_Click"/>
					</div>
				
					
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							or sign up using
						</span>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a>

						<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('../assets/login/images/bg-02.JPG');">
				</div>
			</div>
		</div>
	</div>

<!--===============================================================================================-->
	<script src="../assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="../assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="vassets/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../assets/login/js/main.js"></script>

</body>
</html>
