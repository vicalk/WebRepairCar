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
   <link rel="stylesheet" type="text/css" href="stylesear.css">
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
<div class="container">
    <div class="">
      <h1>Admin</h1>
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8 col-lg-offset-4">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for AFM or Email...">
            <span class="input-group-btn">
        <button class="btn btn-default btn-primary" type="button">Search</button>
      </span>
          </div>
          <!-- /input-group -->
        </div>
        <!-- /.col-lg-6 -->
      </div>
      <!-- /.row -->
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>Username</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>AFM</th>
            <th>Email</th>
            <th>Brand</th>
            <th>Plates</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>zuck</td>
            <td>Mark</td>
            <td>Zuckerberg</td>
            <td>123456789</td>
            <td>some@one.com</td>
            <td>Ferrari</td>
            <td>ASD1234</td>
            <td><a class="btn btn-xs btn-default" href="update.ftl">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>tim</td>
            <td>Tim</td>
            <td>Cook</td>
            <td>123456789</td>
            <td>some@one.com</td>
            <td>Lamborghini</td>
            <td>ASD1234</td>
            <td><a class="btn btn-xs btn-default" href="update.ftl">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>elon</td>
            <td>Elon</td>
            <td>Musk</td>
            <td>123456789</td>
            <td>some@one.com</td>
            <td>Tesla</td>
            <td>ASD1234</td>
            <td><a class="btn btn-xs btn-default" href="#!">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>woz</td>
            <td>Steve</td>
            <td>Wozniak</td>
            <td>123456789</td>
            <td>some@one.com</td>
            <td>Audi</td>
            <td>ASD1234</td>
            <td><a class="btn btn-xs btn-default" href="#!">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
          </tr>
        </tbody>
      </table>



</body>
</html>
