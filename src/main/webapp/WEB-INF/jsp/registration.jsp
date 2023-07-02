<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Create an account</title>
    <link href="${contextPath}/">
    <link href="${contextPath}/">    
</head>

<body >

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">PetShop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">      
    <ul class="navbar-nav mr-auto">
    <li class="nav-item" style="margin-left: 75rem;">       
         <a class="nav-link text-white"  href="${contextPath}/login">Login</a>            
      </li></ul>
           
      </div>
  </div>
</nav>

<div class="container my-5" >  

    <form:form method="POST" modelAttribute="userForm" class="col-md-7 offset-md-1" >
        <h2 class="form-signin-heading" style="font-weight: normal;">Register</h2>
        <spring:bind path="username">
            <div class="mb-3 ${status.error ? 'has-error' : ''}">
            	<label class="form-label" style="font-weight:bold;">Username :</label>
                <form:input type="text" path="username" class="form-control" 
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="mb-3 ${status.error ? 'has-error' : ''}">
            <label class="form-label" style="font-weight:bold;">Password :</label>
                <form:input type="password" path="password" class="form-control" ></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="mb-3 ${status.error ? 'has-error' : ''}">
            <label class="form-label" style="font-weight:bold;">Confirm your password :</label>
                <form:input type="password" path="passwordConfirm" class="form-control"
                            ></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>
        
        
       <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/"></script>
</body>
</html>