<#import "/spring.ftl" as spring/>

<head>
    <title> Service Registration Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="stylecreat.css">
</head>

<body>


<#include "/navbar.ftl">

    <div class="container">

        <#if (success??) >
         <div class="alert alert-success">
              <strong>Success!</strong> Service has been Created.
         </div>
        </#if>

        <#if (error??) >
         <div class="alert alert-danger">
              <strong>Error!</strong> Could Not Create Service.
         </div>
        </#if>

        <form class="form-horizontal" action="/admin/repairCreate" method="post" id="repairCreateForm" name="repairCreateForm">

            <fieldset>

                <!-- Form Name -->
                <legend>Create new Service:</legend>

                <!-- Vehicle's plateNo input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.vehiclePlateNo"/>
                    <label class="col-sm-2 control-label">Plate Number:</label>
                    <div class="col-sm-10">
                        <input  name="vehiclePlateNo" id="vehiclePlateNo"  placeholder="Plate Number..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Date input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairDate"/>
                    <label class="col-sm-2 control-label">Service Date:</label>
                    <div class="col-sm-10">
                        <input  name="repairDate" id="repairDate"  placeholder="Service Date..." class="form-control"  type="date">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Status input-->
                    <div class="form-group">
                        <@spring.bind "repairCreateForm.repairStatus"/>
                        <label class="col-sm-2 control-label">Service Status:</label>
                        <div class="col-sm-10">
                                <select class="col-sm-12" id="repairStatus">
                                    <option value="1" name ="repairStatus" selected="selected">On Hold</option>
                                    <option value="2" name ="repairStatus">In Progress</option>
                                    <option value="3" name ="repairStatus">Completed</option>
                                </select>
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>
                        </div>
                    </div>

                <!-- Repair Type input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairType"/>
                    <label class="col-sm-2 control-label">Service Type:</label>
                    <div class="col-sm-10">
                                <select class="col-sm-12" id="repairType" >
                                    <option value="1" name="repairType" selected="selected">Small</option>
                                    <option value="2" name="repairType">Big</option>
                                </select>
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Cost input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairCost"/>
                    <label class="col-sm-2 control-label">Service Cost:</label>
                    <div class="col-sm-10">
                        <input name="repairCost" id="repairCost"  placeholder="Service Cost..."  class="form-control"  type="text"/>
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Description input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairDescription"/>
                    <label class="col-sm-2 control-label">Service Description:</label>
                    <div class="col-sm-10">
                        <input  name="repairDescription" id="repairDescription"  placeholder="Service Description..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>


                <div class="form-group">
                    <div class="col-md-12 text-right">
                        <button type="submit" class="btn btn-primary btn-lg" onClick="GetSelectedItems('repairStatus','repairType');">Create Service
                    </div>


            </fieldset>
        </form>


    </div>


</body>
