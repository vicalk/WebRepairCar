<#import "/spring.ftl" as spring/>

<head>
    <title> Repair Registration Form</title>
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
        <form class="form-horizontal" action="/repairCreate" method="post" id="repairCreateForm" name="repairCreateForm">

            <fieldset>

                <!-- Form Name -->
                <legend>Create new repair:</legend>

                <!-- Repair Date input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairDate"/>
                    <label class="col-sm-2 control-label">Repair Date:</label>
                    <div class="col-sm-10">
                        <input  name="repairDate" id="repairDate"  placeholder="Repair Date..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Status input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairStatus"/>
                    <label class="col-sm-2 control-label">Repair Status:</label>
                    <div class="col-sm-10">
                        <input  name="repairStatus" id="repairStatus"  placeholder="Repair Status..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Type input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairType"/>
                    <label class="col-sm-2 control-label">Repair Type:</label>
                    <div class="col-sm-10">
                        <input  name="repairType" id="repairType"  placeholder="Repair Type..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Cost input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairCost"/>
                    <label class="col-sm-2 control-label">Repair Cost:</label>
                    <div class="col-sm-10">
                        <input name="repairCost" id="repairCost"  placeholder="Repair Cost..."  class="form-control"  type="text"/>
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>

                <!-- Repair Description input-->
                <div class="form-group">
                    <@spring.bind "repairCreateForm.repairDescription"/>
                    <label class="col-sm-2 control-label">Repair Description:</label>
                    <div class="col-sm-10">
                        <input  name="repairDescription" id="repairDescription"  placeholder="Repair Description..." class="form-control"  type="text">
                        <#list spring.status.errorMessages as error>
                            <span> <h5 style="color:red;">${error}</h5> </span>
                        </#list>

                    </div>

                </div>


                <div class="form-group">
                    <div class="col-md-12 text-right">
                        <button type="submit" class="btn btn-primary btn-lg">Create Repair
                    </div>


            </fieldset>
        </form>


    </div>


</body>
