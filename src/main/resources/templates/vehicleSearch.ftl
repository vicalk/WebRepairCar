<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <title>Owner</title>
</head>

<body>
  <nav class="navbar navbar-inverse">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Project name</a>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>
  <div class="container">
    <div class="">
      <h1>Admin</h1>
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
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
      <p>&nbsp;</p>



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
            <td><a class="btn btn-xs btn-default" href="#!">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
          </tr>
         <!--  [/#list]
          [#else]
                   <div class="alert alert-danger">
            <strong>Error!</strong> No Users found.
                   </div>
          [/#if] -->
        </tbody>
      </table>
      <div>
        <a class="btn btn-primary btn-lg">Create New</a>
    </div>
  </div>
  <!-- /.container -->
  <!-- Bootstrap core JavaScript
================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script>
  window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
  </script>
  <script src="../../dist/js/bootstrap.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body <body>
</body>

</html>