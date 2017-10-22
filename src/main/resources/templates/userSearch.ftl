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
     <div class="">
       <h1>Admin</h1>
       <div class="row">

         <form  class="form-inline" action="/admin/userSearch" method="get" name="userSearchForm">
           <div class="col-sm-4 col-sm-offset-7">
           <div class="input-group">
             <@spring.bind "userSearchForm.userSearchText"/>
             <input type="text" class="form-control" name="userSearchText" id="userSearchText" placeholder="Search by Tax id or Email...">
             <span class="input-group-btn">
               <button class="btn btn-default btn-primary" type="button">Search</button>
             </span>
           </div>
           <!-- /input-group -->


             <@spring.bind "userSearchForm.userSearchType"/>
             <label class="col-sm-5 control-label">Search by:</label>
 			<div class="col-sm-14">
 				<label class="radio-inline">
                   <input type="radio" name="userSearchType" id="userSearchType" value="AFM" />Tax Id
 				</label>
                <label class="radio-inline">
                   <input type="radio" checked="checked" name="userSearchType" id="userSearchType" value="EMAIL" />Email
 				</label> <br />
 			</div>
 		  </div>


           </div>
         <!-- /.col-lg-6 -->
       </div>
       <!-- /.row -->
       <p>&nbsp;</p>
       <p>&nbsp;</p>



         [#ftl]
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
           [#if users?? && users?size > 0]
          [#list users as user]
           <tr>
             <th scope="row">${user.id}</th>
             <td>${user.firstName}</td>
             <td>${user.lastName}</td>
             <td>${user.afm}</td>
             <td>${user.email}</td>
             <td>${user.address}</td>
             <td>${user.userType}</td>
             <td><a class="btn btn-xs btn-default" href="#!">Edit</a> <a class="btn btn-xs btn-danger" href="#!">Delete</a></td>
           </tr>
          < [/#list]
           [#else]
                    <div class="alert alert-danger">
             <strong>Error!</strong> No Users found.
                    </div>
           [/#if]
         </tbody>
       </table>
       <div>
         <a class="btn btn-primary btn-lg">Create New</a>
     </div>
   </div>
   <!-- /.container -->
   <!-- Bootstrap core JavaScript
 ================================================== -->
   <!-- Placed at the end of the document so the pages load faster -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script>
   window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
   </script>
   <script src="../../dist/js/bootstrap.min.js"></script>
   <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
   <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
 </body <body>
 </body>