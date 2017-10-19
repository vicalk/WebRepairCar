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
   <link rel="stylesheet" type="text/css" href="stylereg.css">
</head>
        <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admin.ftl">CAR REPAIR webApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="login.ftl">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">OWNER
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="create.ftl">CREATE</a></li>
          <li><a href="search.ftl">SEARCH</a></li>
          <li><a href="update.ftl">UPDATE</a></li>
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
                </div>
   </nav> 
        <div class="vehicleRegistration">
        
        <div class="col-md-2">
        </div>
        
        <div class="col-md-8 col-lg-6">
        <header><h1>User registration form</h1>
        
        <h4>Please fill all the following fields</h4></header>

       <div class="side">
        <form action="/action_page.php">
            <label for="lname">Tax number</label>
            <input type="text" id="TaxNum" name="TaxNum" placeholder="Type a unique tax number.." required><br>

           <label for="fname">First name</label>
            <input type="text" id="fname" name="firstname" placeholder="Type first name.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="lname">Last name</label>
            <input type="text" id="lname" name="Last name" placeholder="Type last name.." required><br>

           <label for="TaxNum">e-mail</label>
            <input type="text" id="email" name="e-mail" placeholder="Type e-mail.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="Type of user">User Type</label>
            <select id="UserType" name="UserType" required>
                <option value=""disabled selected>---</option>
                <option value="Admin">Admin</option>
                <option value="Simple User">Simple user</option>
            </select><br>

           <label for="userpass">User password</label>
            <input type="text" id="UserP" name="UserPass" placeholder="Set new password.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>

           <label for="ConfPass">Confirm password</label>
            <input type="text" id="ConfirmPass" name="ConfirmPass" placeholder="Confirm password number.." required><br>
            <div class="divCheck"></div>
            <br>
            <label for="Address">Address</label>
            <input type="text" id="Address" name="Address" placeholder="Type address.." required><br>

           <label for="TaxNum">Plate number</label>
            <input type="text" id="platenum" name="platenum" placeholder="Type plate number.." required><br>
            </form>

   <!-- Choose if you want to add a vehicle:<br>
<a href="tsertsrtete.html"><button>Go to vehicle form</button></a> !-->
        <script>
			function ConfirmDelete()
{
  var x = confirm("Are you sure you want to create a new owner?");
  if (x)
      return true;
  else
    return false;
}
    
</script>    
<input type="button" value="Submit" Onclick="ConfirmDelete()">

        

  </div>
  </div>
  </div>


</body>
</html>