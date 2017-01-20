<%-- 
    Document   : indx
    Created on : Jan 17, 2017, 2:35:03 AM
    Author     : Shubham
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Stylesheet.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<title>RDI</title>
</head>
<body>

<!-- css applied for making the width of fieldset same as the length of the elements in it -->
<style type="text/css">
.fieldset-auto-width{
  display: inline-block;
}

.pull-right{
  float: right;
}
</style>

<div class="w3-container" align="center">
<div class="page-header" align="left">

<div class="w3-container-fluid w3-light-blue">
<img src="http://voile.iseplive.fr/wp-content/uploads/2016/03/logoISEP.png" width="100" align="left">
<h1> &nbsp; &nbsp;  RDI Publications</h1>
<div class="pull-right">
<button type="button" class="btn btn-primary">Sign-Up</button>
</div>
</div>
</div>


<br><br>
<h1 class="title">Scientific Publication Manager</h1>
<form name="myForm" action="Login" method="post">

<br><br>

    <fieldset class="fieldset-auto-width"><legend><b>Sign In</b></legend>
    	<br><label>Pseudo :</label>
    	<input type="text" placeholder="Pseudo" name="username"><br>
    	<br><label>Password :</label>
    	<input type="password" placeholder="Password" name="password"><br>


    <br>
    <input type="submit" value="Sign In">
    </fieldset>
    <br><br>
    <a href="ForgottenPassword.html">Forgot your password ?</a>
    <br><br>
    <!--<a href="SignUp.html" id="signup">First visit ? Sign up here !</a>-->
    <a href="Index.html" id="visitor">Visitor ? Just skip here</a>

</form>
</div>
</body>
</html>
