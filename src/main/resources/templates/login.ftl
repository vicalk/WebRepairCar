<#import "/spring.ftl" as spring/>

<head>
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

    <div class="container">
     <h2>Welcome to Car Repair!</h2>
		<br></br>
      <h2>Sign in</h2>
       <form name="loginForm" action="/login"  id="loginForm" method="post" style="border:1px solid #ccc">
         <div class="container">
         <label><b>Enter Email:</b></label>
         <input type="text" placeholder="Enter Email" name="email" required>
	        <br></br>
            <label><b>Enter Password:</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>
            <br></br>
            <div class="clearfix">
            <button type="submit" class="loginbtn">Log in</button>
            <button type="submit" href="signup.ftl" class="signupbtn">Sign up</button>
            </div>
         </div>
        </form>
     </div>
</body>
