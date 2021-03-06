<%-- 
    Document   : profile
    Created on : Jan 19, 2017, 12:55:22 PM
    Author     : Shubham
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>RDI</title>
  <meta http-equiv="Content-Type" charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Stylesheet.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>RDI's publications</h1>
    <ul class="nav nav-pills" id="myTab">
      <li><a href="Index.html">Home</a></li>
      <li class="active"><a href="profile.html">Profile</a></li>
      <li class="dropdown">
        <a data-toggle="dropdown" class="dropdown-toggle" id="myTabDrop1" href="#">
          Team Activity <b class="caret"></b>
        </a>
        <ul aria-labelledby="myTabDrop1" role="menu" class="dropdown-menu">
          <li><a href="publication.html">Publications / Submissions</a></li>
          <li><a href="statistics.html">Statistics</a></li>
        </ul>
        <li id="search">
          <input type="search" class="input-sm" placeholder="Search">
          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-eye-open"></span> Search</button>
        </li>

  </li>
</ul>
  </div>





  <div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           <A href="edit.html" >Edit Profile</A>

        <A href="edit.html" >Logout</A>
       <br>
<p class=" text-info">Hello <%=session.getAttribute("name")%></p>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >


          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><%=session.getAttribute("name")%></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>

                <!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
                <div class=" col-md-9 col-lg-9 ">
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Date of birth :</td>
                        <td>02-05-1802</td>
                      </tr>
                      <tr>
                        <td>Address:</td>
                        <td>1, avenue des Champs-Elysees</td>
                      </tr>

                         <tr>

                        <tr>
                        <td>Home Address</td>
                        <td>Kathmandu,Nepal</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:smaurin@juniorisep.com">smaurin@juniorisep.com</a></td>
                      </tr>
                        <td>Phone Number</td>
                        <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)
                        </td>

                      </tr>

                    </tbody>
                  </table>




                  <button id="activity" class="btn btn-primary">My Activity</button>
                  <button class="btn btn-primary">Team Activity</button>
                  <br><br>
                  <div id="myactivity"style="display:none;">Hello !</div>

                  <script>
                  document.querySelector("#activity").onclick = function() {
                  if (window.getComputedStyle(document.querySelector('#myactivity')).display=='none'){
                  document.querySelector("#myactivity").style.display="block";
                  } else {
                  document.querySelector("#myactivity").style.display="none";
                  }
                  }
                  </script>






                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>

          </div>





</div>

</body>
</html>