<#import "/spring.ftl" as spring/>

<!doctype html>
<html lang="en">
<head>
  <title>Car Repair</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>


<#include "/navbar.ftl">

<h3>Welcome!</h3>

      <!-- [#ftl] -->
      <table id="vehicleTable" class="table" >
        <thead>
          <tr>
            <th>#ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>AFM</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
            <th>USERTYPE</th>

          </tr>
        </thead>
        <tbody>
          <!-- [#if users?? && users?size > 0]
         [#list users as user] -->
          <tr>
            <th scope="row">${user.id}</th>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.afm}</td>
            <td>${user.email}</td>
            <td>${user.address}</td>
            <td>${user.userType}</td>

          </tr>
         <!--  [/#list]
          [#else]
                   <div class="alert alert-danger">
            <strong>Error!</strong> No Users found.
                   </div>
          [/#if] -->
        </tbody>
      </table>

 </body>
</html>