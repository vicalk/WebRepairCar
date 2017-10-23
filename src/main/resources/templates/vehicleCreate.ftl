<#import "/spring.ftl" as spring/>

<head>
  <title> Vehicle Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="stylesear.css">
</head>

<body>


<#include "/navbar.ftl">

<div class="container">

 <form class="form-horizontal" action="/admin/vehicleCreate" method="post" id="vehicleRegisterForm" name="vehicleRegisterForm">

    <fieldset>

<!-- Form Name -->
<legend>Register a new vehicle:</legend>

<!-- afm input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.afm"/>
  	<label class="col-sm-2 control-label">Plate Number:</label>
  	<div class="col-sm-10">
   		 <input  name="afm" id="afm"  placeholder="Owner tax id..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>
  	</div>
</div>

<!-- plateNo input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.afm"/>
  	<label class="col-sm-2 control-label">Plate Number:</label>
  	<div class="col-sm-10">
   		 <input  name="afm" id="afm"  placeholder="Tax id..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>
  	</div>
</div>



<!-- carModel input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.carModel"/>
  	<label class="col-sm-2 control-label">Car Model:</label>
  	<div class="col-sm-10">
   		 <input  name="lastname" id="lastname"  placeholder="Last name..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- year input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.year"/>
  	<label class="col-sm-2 control-label">First Name:</label>
  	<div class="col-sm-10">
   		 <input  name="year" id="year"  placeholder="Car year..." class="form-control"  type="text">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- color input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.address"/>
  	<label class="col-sm-2 control-label">Address:</label>
  	<div class="col-sm-10">
   		 <input name="address" id="address"  placeholder="Address..."  class="form-control"  type="text"/>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- afm input-->
<div class="form-group">
  	<@spring.bind "vehicleRegisterForm.email"/>
  	<label class="col-sm-2 control-label">Email:</label>
  	<div class="col-sm-10">
   		 <input  name="email" id="email"  placeholder="Email..." class="form-control"  type="email">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>
  	</div>
</div>

  <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Create vehicle
              </div>


                </fieldset>
 </form>


        </div>


</body>