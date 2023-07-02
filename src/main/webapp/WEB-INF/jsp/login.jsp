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

    <title>Log in with your account</title>

     <link href="${contextPath}/"> 
    <link href="${contextPath}/"> 

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">Pet Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">    
    <ul class="navbar-nav mr-auto">
    
    <li class="nav-item" style="margin-left: 75rem;">       
         <a class="nav-link text-white"  href="${contextPath}/registration">Sign Up</a>            
      </li></ul>
           
      </div>
  </div>
</nav>

<div class="container my-5">

    <form method="POST" action="${contextPath}/login" class="col-md-7 offset-md-1">
        <h2 style="font-weight: normal;" class="form-heading">Login</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <div class="mb-3"><br>
            <label class="form-label" style="font-weight:bold;">Username :</label>
            <input name="username" type="text" class="form-control" 
                   autofocus="autofocus"/>
                   </div>
                   <div class="mb-3">
            <label class="form-label" style="font-weight:bold;">Password :</label>
            <input name="password" type="password" class="form-control" />
            </div>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/><br>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        </div>

    </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>