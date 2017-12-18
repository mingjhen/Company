<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginTest.aspx.cs" Inherits="LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login Test</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="stylesheet" type="text/css" href="https://ngmdb.usgs.gov/topoview/assets/css/fonts.min.css">

    <link rel="StyleSheet" type="text/css" href="css/LoginStyle.css" />
    <script src="js/LoginControl.js" type="text/javascript"></script>
</head>
<body>
   
   <form id="form1" runat="server">

    
          <div class="wrapper">

            <div class="header">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True"></asp:ScriptManager>
            </div>
            <!-- header -->

            <div class="col-lg-12 content ">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-4 login">
                    <div class="col-lg-12  H_login row">
                        <img src="image/Background.png">
                    </div>

                    <!-- row -->
                    <div class="col-lg-12 INput row">
                            <%--帳號輸入框--%>
                            <input id="Account" type="text" placeholder="Account" onblur="CheckAccount(this)" maxlength="15" />
                            <%--提示帳號可不可用--%>
                                <i id="account_prompt" class="fa fa-times-circle-o fa-3x hidden" aria-hidden="true"></i>
                    </div>
                    <!-- row -->

                    <div class="col-lg-12 INput row">
                         <%--密碼輸入框--%>
                        <input id="Password" type="password" placeholder="Password" required autofocus oninvalid="setCustomValidity('Don\'t leave a blank！')" oninput="setCustomValidity('')" />
                       
                         <%--提示密碼可不可用--%>
                                <i id="password_prompt" class="fa fa-times-circle-o fa-3x hidden" aria-hidden="true"></i>
                    </div>
                    <!-- row -->
                  
                    <div class="col-sm-10 col-md-10 col-lg-10 Btn row">
                        <input class="OK Button OKButton" type="submit" value="Login" onclick="GetAccount()">
                    </div>
                    <!-- row -->
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 Footer row">
                        <hr class="hr">
                        <div class="footer_wrapper">
                        <div class="footer_content">
                        <h3> Geotech Science Co., Ltd </h3>
                             Email:<a id="mail" href="mailto:service@geotech-science.com">service@geotech-science.com</a> 
                            <br>
                            Tel: 886-2-8647-1860  Fax: 886-2-8647-1870
                        <br><br>
                        <p>©2017 All Rights Reserved. Privacy and Terms</p>
                            </div>
                        <%--footer_content--%>
                            </div>
                        <%--footer_wrapper--%>
                    </div>
                    <!-- row -->

                </div>
                <!-- login -->


            </div>
            <!-- content -->
        </div><!-- wrapper -->
           </form>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>
