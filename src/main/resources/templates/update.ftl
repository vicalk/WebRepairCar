<#import "/spring.ftl" as spring/>

<head>
  <title> User Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="/../styleup.css">
</head>

<body>

<#include "/navbar.ftl">
        <body>

<div class="container">
       <h1>Admin</h1>
       <div class="row">
         <form  class="form-inline" action="/search" method="post" name="SearchForm id="SearchForm">
           <div class="col-sm-4 col-sm-offset-7">
           <div class="form-group">
             <input type="text" class="form-control" name="afm" id="afm" placeholder="Search with AFM or Email...">
             <span style="display: inline;" class="input-group-btn">
               <button class="btn btn-default btn-primary" type="submit">Search</button>
             </span>
           </div>
              </div>
            </div>
    <p>&nbsp;</p>
           <!-- /input-group -->
           <!--
          <div class="col-sm-4 col-sm-offset-7">
           <div class="form-group ">
             <label class="col-sm- control-label">Search by:</label>
 				<label class="radio-inline">
                   <input type="radio" name="afm" id="userSearchType" value="afm" />Tax Id
 				</label>
                <label class="radio-inline">
                   <input type="radio" checked="checked" name="afm" id="afm" value="email" />Email
 				</label> <br />
 			</div>
 		  </div>  -->
 		  </form>



       <p>&nbsp;</p>
       <p>&nbsp;</p>
<!-- /.row -->
 <div class="container">
 <form class="form-horizontal" action="/update/user/{afm}" method="post" id="registrationForm" name="registrationForm">

<fieldset>

<!-- Form Name -->
<legend>Update new user:</legend>
        <div class="vehicleRegistration">
        <div class="col-md-3">
        </div>
        <div class="col-md-8 col-lg-6 col-lg-offset-2">
        <header><h1>User form</h1>
        <h4>Please fill all the following fields</h4></header>

<!-- userID input-->
<div>
    <@spring.bind "registrationForm.userID"/>
    <input type="hidden" name="userID" value="${registrationForm.userID}"/>
</div>


<!-- afm input-->
<div class="form-group">
  	<label class="col-sm-2 control-label">Afm:</label>
  	<div class="col-sm-10">
   		 <input  name="afm" id="afm" value="${registrationForm.afm!""}" placeholder="Tax ID..." class="form-control"  type="number">
   		    		  <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- firstname input-->
<div class="form-group">
    <@spring.bind "registrationForm.firstname"/>
  	<label class="col-sm-2 control-label">First Name:</label>
  	<div class="col-sm-10">
   		 <input  name="firstname" id="firstname"  value="${registrationForm.firstname!""}" placeholder="First name..." class="form-control"  type="text">
   		    		  <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- lastname input-->
<div class="form-group">
    <@spring.bind "registrationForm.lastname"/>
  	<label class="col-sm-2 control-label">Last Name:</label>
  	<div class="col-sm-10">
   		 <input  name="lastname" id="lastname"  value="${registrationForm.lastname!""}" placeholder="Last name..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- Address input-->
<div class="form-group">
    <@spring.bind "registrationForm.address"/>
  	<label class="col-sm-2 control-label">Address:</label>
  	<div class="col-sm-10">
   		 <input name="address" id="address"  value="${registrationForm.address!""}" placeholder="Address..."  class="form-control"  type="text"/>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- email input-->
<div class="form-group">
    <@spring.bind "registrationForm.email"/>
  	<label class="col-sm-2 control-label">Email:</label>
  	<div class="col-sm-10">
   		 <input  name="email" id="email"  value="${registrationForm.email!""}" placeholder="Email..." class="form-control"  type="email">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- password input-->
<div class="form-group">
    <@spring.bind "registrationForm.password"/>
  	<label class="col-sm-2 control-label">Password:</label>
  	<div class="col-sm-10">
   		 <input  name="password" id="password"  value="${registrationForm.password!""}" placeholder="Password..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!--userType input -->

		  <div class="form-group ">
            <@spring.bind "registrationForm.role"/>
			<label class="col-sm-2 control-label">User Type:</label>
			<div class="col-sm-10">
				<label class="radio-inline" value="${registrationForm.role!""}">
                                  <input type="radio" name="role" id="userType" value="ADMIN" />Admin
				</label>
                                <label class="radio-inline">
                                  <input type="radio" checked="checked" name="role" id="userType" value="SIMPLE" />User
				</label> <br />
			</div>
		  </div>

  <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Update User
              </div>


                </fieldset>
 </form>


        </div>


</body>