﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="LibrarySystem.registration" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TPCOP Registration Form</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <h1 style="color: white">Sign Up</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form id="f1" runat="server">
                        <div class="form-group">
                            <label>User Name</label>
                            <asp:TextBox ID="txt_res_username" runat="server" class="form-control" placeholder="User Name" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="txt_res_firstname" runat="server" class="form-control" placeholder="First Name" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox ID="txt_res_lastname" runat="server" class="form-control" placeholder="Last Name" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <asp:TextBox ID="txt_res_email" runat="server" class="form-control" placeholder="Email" TextMode="Email" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Contact</label>
                            <asp:TextBox ID="txt_res_contact" runat="server" class="form-control" placeholder="Contact" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label mb-1">Photo</label>
                            <asp:FileUpload ID="fud_image" runat="server" class="form-control"></asp:FileUpload>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="txt_res_pass1" runat="server" class="form-control" placeholder="Password" TextMode="Password" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Re-Password</label>
                            <asp:TextBox ID="txt_res_pass2" runat="server" class="form-control" placeholder="Re-Password" TextMode="Password" required></asp:TextBox>
                        </div>

                        <asp:Button ID="btn_res" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register" OnClick="btn_res_Click" />
                        <div class="register-link m-t-15 text-center">
                            <p>Already have account ? <a href="./login.aspx">Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
