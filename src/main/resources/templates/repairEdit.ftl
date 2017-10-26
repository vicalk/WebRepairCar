<#import "/spring.ftl" as spring/>

<head>
  <title> Service Update</title>
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

<#if (success??) >
 <div class="alert alert-success">
      <strong>Success!</strong> Service has been Updated.
 </div>
</#if>

<#if (error??) >
 <div class="alert alert-danger">
      <strong>Error!</strong> Could not update service.
 </div>
</#if>


 <form class="form-horizontal" action="/admin/repairSearch/{id}/update" method="post" id="repairToEdit" name="repairToEdit">

    <fieldset>

<!-- Form Name -->
<legend>Update Service:</legend>


<!-- repairID input-->
<div>
    <@spring.bind "repairToEdit.repairId"/>
    <input type="hidden" name="repairId" value="${repairToEdit.repairId}"/>
</div>

<!-- vehiclePlateNo output-->
<div class="form-group">
  	<@spring.bind "repairToEdit.vehiclePlateNo"/>
  	<label class="col-sm-2 control-label">Plate Number:</label>
  	<div class="col-sm-10">
   		 <input  name="vehiclePlateNo" id="vehiclePlateNo" value="${repairToEdit.vehiclePlateNo!""}" class="form-control"  type="text" readonly>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>
  	</div>
</div>


<!-- repair Date input-->
<div class="form-group">
  	<@spring.bind "repairToEdit.repairDate"/>
  	<label class="col-sm-2 control-label">Service Date:</label>
  	<div class="col-sm-10">
   		 <input  name="repairDate" id="repairDate" value="${repairToEdit.repairDate!""}"  placeholder="Service Date.." class="form-control"  type="date">
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>
  	</div>
</div>



<!-- repair Status input-->
<div class="form-group">
  	<@spring.bind "repairToEdit.repairStatus"/>
  	<label class="col-sm-2 control-label">Service Status:</label>
  	<div class="col-sm-10">
                  <select class="col-sm-12" id="repairStatus" value="${repairToEdit.repairStatus!""}" >
                      <option value="1" name ="repairStatus" selected="selected">On Hold</option>
                      <option value="2" name ="repairStatus">In Progress</option>
                      <option value="3" name ="repairStatus">Completed</option>
                  </select>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- repair Type  input-->
<div class="form-group">
  	<@spring.bind "repairToEdit.repairType"/>
  	<label class="col-sm-2 control-label">Service Type:</label>
  	<div class="col-sm-10" value="${repairToUpdate.repairType!""}" >
                    <select class="col-sm-12" id="repairType" >
                        <option value="1" name="repairType" selected="selected">Small</option>
                        <option value="2" name="repairType">Big</option>
                    </select>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- Description input-->
<div class="form-group">
  	<@spring.bind "repairToEdit.repairDescription"/>
  	<label class="col-sm-2 control-label">Service Description:</label>
  	<div class="col-sm-10">
   		 <input name="repairDescription" id="repairDescription" value="${repairToEdit.repairDescription!""}"  placeholder="Description..."  class="form-control"  type="text"/>
   		    		    <#list spring.status.errorMessages as error>
                         <span> <h5 style="color:red;">${error}</h5> </span>
                      </#list>

  	</div>

</div>

<!-- Submit-->

  <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Update Service
              </div>


                </fieldset>
 </form>


        </div>


</body>
