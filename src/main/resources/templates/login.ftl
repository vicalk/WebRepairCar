<#import "/spring.ftl" as spring/>

<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>


<body>

<h2>${message!""}</h2>
<h2 style="color: red">${errorMessage!""}</h2>

<div class="container" style="margin-top:30px">
<div class="col-md-4">
<div class="panel panel-default">
  <div class="panel-heading"><h3 class="panel-title"><strong>Sign In </strong></h3></div>
  <div class="panel-body">

    <form role="form" action="/login" method="post" id="loginForm" name="loginForm">
     <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email">
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" placeholder="Password">
      </div>
      <button type="submit" class="btn btn-sm btn-default">Sign in</button>
    </form>

      </div>
    </div>
    </div>

</body>
