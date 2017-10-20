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
 


 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admin.ftl">CAR REPAIR webApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin.ftl">Home</a></li>
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
                      </li>
                      </ul>
                     <ul class="nav navbar-nav navbar-right">
                          <li><a href="login.ftl"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                      </ul>
  </div>
</nav>
<h3>Welcome!</h3>
<table width="55%" border="2" align="center">
  <tbody>
    <tr>
      <th style="background-color:#FF0000">Plate Number</th>
      <th style="background-color:#FF0000">Model</th>
      <th style="background-color:#FF0000">Year</th>
      <th style="background-color:#FF0000">Color</th>
      <th style="background-color:#FF0000">Tax Number</th>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>

 </body>
</html>
	