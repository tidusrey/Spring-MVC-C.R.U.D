<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
   <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light static-top mb-5 shadow">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="welcome" >Eternal Private School</a>
          
           
          
           
            
              <div class="btn-group" role="group">
                <button style="background-color: rgb(138, 100, 173);" id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Teachers
                </button>
                <div style="text-decoration:underline; background-color:mediumspringgreen;"  class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                  <a class="dropdown-item" href="insert">Insert a new trainer</a>
                  <a class="dropdown-item" href="trainerlist">A list of our trainers per course</a>
                </div>
              </div>
          
             
          
             
              </div>
              
          </nav>
    <div class="container text-center">
        
        <h3>New Regitration</h3>  
        <hr>
        <form class="form-hotizonal" method="POST" action="submitform">
           
<!--            <input type="hidden" name="id" value="${trainerId}"/>-->
            
            <div class="form-group">
                <label class="control-label col-md-3">First name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="name"
                      />
            
            </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-md-3">Last name</label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="surname"
                      />
            </div>
            </div>
            
<!--            <div class="form-group">
                <label class="control-label col-md-3"></label>
            <div class="col-md-7">
                <input type="text" class="form-control" name="username"
                       value="${trainer.username}"/>
            
            </div>
            </div>
            -->
           
            
                     
             <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Register"/>
            </div>           
            
        </form>
        
        
        
        
    </div>
                       
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    <!-- Default form subscription -->
</body>
</html>