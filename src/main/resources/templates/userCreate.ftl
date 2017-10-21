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

<#include navbar.ftl>

        <div class="container">
            <form action="/register" method="post" id="userRegisterForm" name="userRegisterForm">

            <#--bind this field with the registration form fields-->

            <@spring.bind "userRegisterForm.afm"/>
                <label for="afm">Tax ID:</label>
                <input type="number" name="afm" id="afm" placeholder="firstname"/>
            <#--dispay validation error message here for this field-->

            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

            <@spring.bind "userRegisterForm.lastname"/>
                <label for="lastname">Last Name</label>
                <input type="text" name="lastname" id="lastname" placeholder="lastname"/>
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

            <@spring.bind "userRegisterForm.firstname"/>
                <label for="firstname">First Name</label>
                <input type="text" name="firstname" id="firstname" placeholder="firstname"/>
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

             <@spring.bind "userRegisterForm.address"/>
                 <label for="address">Address</label>
                 <input type="text" name="address" id="address" placeholder="address"/>
             <#list spring.status.errorMessages as error>
                 <span>${error}</span>
             </#list>


            <@spring.bind "userRegisterForm.email"/>
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="email"/>
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

            <@spring.bind "userRegisterForm.password"/>
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="password"/>
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

            <@spring.bind "registrationForm.userType"/>
                <label for="userType">User Privileges:</label>
                <input type="radio" name="userType" value="SIMPLE" />User<br>
                <input type="radio" name="userType" value="ADMIN" />Admin
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>

                <button type="submit">Register</button>
            </form>
        </div>



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