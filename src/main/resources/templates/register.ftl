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
      <a class="navbar-brand" href="/login">CAR REPAIR webApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/admin">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">OWNER
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/register">CREATE</a></li>
          <li><a href="/search">SEARCH</a></li>
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
                <li><a href="#">CREATE</a></li>
                <li><a href="#">SEARCH</a></li>  </ul>
                </div>
   </nav>
        <div class="vehicleRegistration">

        <div class="col-md-2">
        </div>

        <div class="col-md-8 col-lg-6">
        <header><h1>User registration form</h1>

        <h4>Please fill all the following fields</h4></header>

       <div class="side">
        <form action="/register" method="post" id="registrationForm" name="registrationForm">
            <#--bind this field with the registration form fields-->
            <@spring.bind "registrationForm.afm"/>
            <label for="lname">Tax number</label>
            <input type="text" id="TaxNum" name="afm" value="${registrationForm.afm!""}" placeholder="Type a unique tax number.." required><br>
                <#--dispay validation error message here for this field-->
                <#list spring.status.errorMessages as error>
                    <span>${error}</span>
                </#list>

           <@spring.bind "registrationForm.firstname"/>
           <label for="fname">First name</label>
            <input type="text" id="fname" name="firstname" value="${registrationForm.firstname!""}" placeholder="Type first name.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>

            <@spring.bind "registrationForm.lastname"/>
           <label for="lname">Last name</label>
            <input type="text" id="lname" name="lastname" value="${registrationForm.lastname!""}" placeholder="Type last name.." required><br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>

           <@spring.bind "registrationForm.email"/>
           <label for="TaxNum">e-mail</label>
            <input type="text" id="email" name="email" value="${registrationForm.email!""}" placeholder="Type e-mail.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>

           <@spring.bind "registrationForm.role"/>
           <label for="Type of user">User Type</label>
            <select id="UserType" name="role" value="${registrationForm.role!""}" required>
                <option value=""disabled selected>---</option>
                <option value="ADMIN" name="ADMIN">Admin</option>
                <option value="SIMPLE" name="SIMPLE">Simple user</option>
            </select><br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>

           <@spring.bind "registrationForm.password"/>
           <label for="userpass">User password</label>
            <input type="text" id="UserP" name="password" value="${registrationForm.password!""}" placeholder="Set new password.." required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>

           <label for="ConfPass">Confirm password</label>
            <input type="text" id="ConfirmPass" name="confirmpassword" placeholder="Confirm password number.." required><br>
            <div class="divCheck"></div>
            <br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>
            <@spring.bind "registrationForm.address"/>
            <label for="Address">Address</label>
            <input type="text" id="Address" name="address" value="${registrationForm.address!""}" placeholder="Type address.." required><br>
            <#--dispay validation error message here for this field-->
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>


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
        <input type="submit" value="Register">


 </form>
  </div>
  </div>
  </div>


</body>
</html>