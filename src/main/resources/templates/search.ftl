<!DOCTYPE html>
<html>
<head>
  <title>Car Repair Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="stylesear.css">
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
                <li><a href="vehicle.ftl">CREATE</a></li>
                <li><a href="Vehicle_se.ftl">SEARCH</a></li>
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
                <button class="btn btn-default btn-primary" type="submit">Search</button>
             </span>
          </div>
          <!-- /input-group -->
        </div>
        <!-- /.col-lg-6 -->
</div>
</form>
      <!-- /.row -->
        <#if users??>
          <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Afm</th>
                    <th>Firstname</th>
                    <th>LastName</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Edit</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <#list users as user>
                <tr>
                    <td>ID</td>
                    <td>${user.afm}</td>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                    <td>${user.role}</td>
                    <form method="GET" action="/update/user/${user.afm}"><td class="text-center"><button type="submit">
                    <span class="glyphicon glyphicon-cog"></span></button>
                    </td>
                    </form>

                    <td class="text-center">
                    <form method="POST" action="/delete/user/${user.afm}">
                    <button type="submit" class="btn btn-xs btn-danger">Delete</button>
                    </form>
                    </td>
                </tr>
                </#list>
            </tbody>
          </table>

        </#if>
</body>
</html>