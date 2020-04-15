<%-- 
    Document   : updateform
    Created on : 22 ??? 2020, 8:03:43 ?.?.
    Author     : ?????
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
   
    <title>Document</title>

    
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
        
        <h3>Update Trainer</h3>  
        <c:forEach items="${trainer}" var="tr">
        <form:form method="POST" action="/updatetrainer"
                   modelAttribute="trainer"> 

            <form:label path="trainerId"></form:label>
            <form:input path="trainerId" placeholder="${tr.trainerId}" type="hidden"/>
            
            <form:label path="trainerName">First Name</form:label>
            <form:input path="trainerName" placeholder="${tr.trainerName}"/>
           
            <form:label path="trainerSurname" >Last Name</form:label>
            <form:input path="trainerSurname" placeholder="${tr.trainerSurname}" />
           
           
            
          
        
            <input type="submit" value="Submit" />
        </form:form>
        </c:forEach>
        
        
         <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>