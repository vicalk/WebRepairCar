<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html>
<head>
  <title>Car Repair Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/../styleup.css">
</head>
        <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/../login">CAR REPAIR webApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/../admin">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">OWNER
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/../register">CREATE</a></li>
          <li><a href="/../search">SEARCH</a></li>
        </ul>
      </li>
      <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">SERVICE
              <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">CREATE</a></li>
                <li><a href="#">SEARCH</a></li>
                </ul>
      <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">VEHICLE
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="vehicle.ftl">CREATE</a></li>
                      <li><a href="Vehicle_se.ftl">SEARCH</a></li>
                     </ul>
                      </li>
                      </ul>
                     <ul class="nav navbar-nav navbar-right">
                          <li><a href="login.ftl"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                      </ul>
                </div>
   </nav>
<form action="/search" method="post" id="SearchForm" name="SearchForm">
<div class="container">
    <div class="">
      <h1>Admin</h1>
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8 col-lg-offset-4">
          <div class="input-group">
            <input name="afm" type="text" class="form-control" placeholder="Search User with AFM or Email...">
            <span class="input-group-btn">
                <button class="btn btn-default btn-primary" type="button">Search</button>
            </span>
          </div>
          <!-- /input-group -->
        </div>
    <!-- /.col-lg-6 -->
</div>
</form>
<!-- /.row -->
        <div class="vehicleRegistration">
        <div class="col-md-3">
        </div>
        <div class="col-md-8 col-lg-6 col-lg-offset-2">
        <header><h1>User form</h1>
        <h4>Please fill all the following fields</h4></header>

<div class="side">
    <form action="/update/user/{afm}" method="post" id="registrationForm" name="registrationForm">

            <input type="hidden" name="userID" value="${registrationForm.userID}"/>

            <label for="afm">Tax number</label>
            <input type="text" id="afm" name="afm" value="${registrationForm.afm!""}" placeholder="Type your afm.." required>

           <label for="fname">First name</label>
            <input type="text" id="fname" name="firstname" value="${registrationForm.firstname!""}" placeholder="Type first name.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="lname">Last name</label>
            <input type="text" id="lname" name="lastname" value="${registrationForm.lastname!""}" placeholder="Type last name.." required><br>

           <label for="TaxNum">E-mail</label>
            <input type="text" id="email" name="email" value="${registrationForm.email!""}" placeholder="Type e-mail.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="Type of user">User Type</label>
            <select id="UserType" name="role" value="${registrationForm.role!""}" required>
                <option selected="true" disabled selected>${registrationForm.role}</option>
                <option value="ADMIN">ADMIN</option>
                <option value="SIMPLE">SIMPLE</option>
            </select><br>

           <label for="userpass">User password</label>
            <input type="text" id="UserP" name="password" value="${registrationForm.password!""}" placeholder="Set new password.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="ConfPass">Confirm password</label>
            <input type="text" id="ConfirmPass" name="confirmpassword" placeholder="Confirm new password number.." required><br>
            <div class="divCheck"></div>
            <br>
            <label for="Address">Address</label>
            <input type="text" id="Address" name="address" value="${registrationForm.address!""}" placeholder="Type address.." required><br>

   <!-- Choose if you want to add a vehicle:<br>
    <a href="tsertsrtete.html"><button>Go to vehicle form</button></a> !-->
        <input type="submit" value="Update">
     </form>
<form action="/delete/user/{afm}" method="post" id="registrationForm" name="registrationForm">
        <!-- delete button  !-->
        <script>
			function ConfirmDelete()
        {
        var x = confirm("Are you sure you want to delete?");
        if (x)
            return true;
        else
            return false;
        }

        </script>

<input type="button" value="Delete" style="color:red" Onclick="ConfirmDelete()">
</form>

  </div>
  </div>
</body>
</html>