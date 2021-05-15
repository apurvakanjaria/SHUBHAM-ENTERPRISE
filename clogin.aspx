<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clogin.aspx.cs" Inherits="clogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SLS LOGIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="clogin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="clogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="clogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="clogin/css/util.css">
	<link rel="stylesheet" type="text/css" href="clogin/css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
	<div class="limiter">
		<div class="container-login100" style="background-image: url('visitor/images/industrial_hero_1.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox ID="username"  CssClass="input100" placeholder="Username" runat="server"></asp:TextBox>
                        <span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<asp:TextBox ID="password" TextMode="Password" CssClass="input100" placeholder="Password" runat="server"></asp:TextBox>
                        <span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					
					<div class="container-login100-form-btn">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" 
                            CssClass="login100-form-btn" onclick="btnlogin_Click" />
					</div>
                    <br />
                   				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="clogin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="clogin/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="clogin/vendor/bootstrap/js/popper.js"></script>
	<script src="clogin/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="clogin/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="clogin/vendor/daterangepicker/moment.min.js"></script>
	<script src="clogin/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="clogin/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="clogin/js/main.js"></script>
    
    </div>
    </form>
</body>
</html>
