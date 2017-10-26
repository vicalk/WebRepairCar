<#import "/spring.ftl" as spring/>

<head>
  <title>Search Service Form </title>
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
       <h1>Service Search</h1>
       <div class="row">
         <form  class="form-inline" action="/admin/repairSearch" method="post" name="repairSearchForm id=name="repairSearchForm">
           <div class="col-sm-8 col-sm-offset-7">
           <div class="form-group">
              <@spring.bind "repairSearchForm.searchText"/>
             <input type="text" class="form-control" name="SearchText" id="SearchText" placeholder="Servise Date or Plate Number...">
             <span style="display: inline;" class="input-group-btn">
               <button class="btn btn-default btn-primary" type="submit">Search</button>
             </span>
           </div>
              </div>
            </div>
    <p>&nbsp;</p>

           <!-- /input-group -->

          <div class="col-sm-4 col-sm-offset-7">
           <div class="form-group ">
             <@spring.bind "repairSearchForm.searchType"/>
             <label class="col-sm- control-label">Search by:</label>
 				<label class="radio-inline">
                   <input type="radio" name="SearchType" id="SearchType" value=ServiceDate" />Service Date
 				</label>
                <label class="radio-inline">
                   <input type="radio" checked="checked" name="SearchType" id="SearchType" value="PlateNo" />Plate number
 				</label> <br />
 			</div>
 		  </div>
 		  </form>



       <p>&nbsp;</p>
       <p>&nbsp;</p>

       <#if repairs??>
              <table class="table" >
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Service Date</th>
                    <th>Status</th>
                    <th>Type</th>
                    <th>Cost</th>
                    <th>Description</th>
                    <th>Plate Number</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>

                 <#list repairList as repair>
                  <tr>
                    <th scope="row">${repair?counter}</th>
                    <td>${repair.repairDate!""}</td>
                    <td>${repair.repairStatus!""}</td>
                    <td>${repair.repairType}</td>
                    <td>${repair.repairCost}</td>
                    <td>${repair.repairDescription!""}</td>
                    <td>${repair.vehiclePlateNo}</td>
                    <td>
                    <form action="/admin/repairSearch/${repair.vehiclePlateNo}" method="GET">
                          <input class="btn btn-xs btn-default" type="submit" value="Update"/>
                    </td>
                    </form>
                    <td class="text-center">
                    <form action="/admin/repairSearch/${repair.vehiclePlateNo}" method="POST">
                          <input class="btn btn-xs btn-danger" type="submit" value="Delete"/>
                    </form>
                    </td>


                  </tr>
                 </#list>
                  </tbody>
                </table>
                    <#else>
                         <div class="alert alert-danger">
                               <strong>Error!</strong> No Services found.
                         </div>
                 </#if>
    </div>


</body>