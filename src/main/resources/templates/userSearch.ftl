<#import "/spring.ftl" as spring/>

<head>
  <title> User Search Form</title>
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
       <h1>Admin</h1>
       <div class="row">
         <form  class="form-group" action="/admin/userSearch" method="post" name="userSearchForm id=name="userSearchForm">
           <div class="col-sm-4 col-sm-offset-7">
           <div class="form-group">
              <@spring.bind "userSearchForm.userSearchText"/>
             <input type="text" class="form-control" name="userSearchText" id="userSearchText" placeholder="Search by Tax id or Email...">
             <span style="display: inline;" class="input-group-btn">
               <button class="btn btn-default btn-primary" type="button">Search</button>
             </span>
           </div>
              </div>
            </div>
    <p>&nbsp;</p>

           <!-- /input-group -->

          <div class="col-sm-4 col-sm-offset-7">
           <div class="form-group ">
             <@spring.bind "userSearchForm.userSearchType"/>
             <label class="col-sm- control-label">Search by:</label>
 				<label class="radio-inline">
                   <input type="radio" name="userSearchType" id="userSearchType" value="AFM" />Tax Id
 				</label>
                <label class="radio-inline">
                   <input type="radio" checked="checked" name="userSearchType" id="userSearchType" value="EMAIL" />Email
 				</label> <br />
 			</div>
 		  </div>



       <p>&nbsp;</p>
       <p>&nbsp;</p>


<#if userList?? && userList?size > 0>

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

          <#list userList as user>
           <tr>
             <th scope="row">${user?counter}</th>
             <td>${user.firstName}</td>
             <td>${user.lastName}</td>
             <td>${user.afm}</td>
             <td>${user.email}</td>
             <td>${user.address}</td>
             <td>${user.userType}</td>
             <td><a class="btn btn-xs btn-default" href="#!">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
           </tr>
          </#list>
           </tbody>
         </table>
           <#else>
                    <div class="alert alert-danger">
             <strong>Error!</strong> No Users found.
                    </div>
           </#if>
   </div>
 </body>