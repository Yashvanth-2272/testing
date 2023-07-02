<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <meta name="description" content="">
    <meta name="author" content="">
    
<title>Add new Pet</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body >


    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">Pet Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white" aria-current="page" href="welcome">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="myPets">My Pet</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="save">Add Pet</a>
        </li>
      </ul>
      <div>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

         <a class="nav-link text-white" onclick="document.forms['logoutForm'].submit()">Logout</a>

    </c:if>     
      
      </div>
    </div>
  </div>
</nav>

  
  <form:form action="save" method="post" modelAttribute="petForm" novalidate="novalidate" 
  class="col-md-4 offset-md-4 my-5">
    <table class="table table-bordered " >
    <tr>
    <td colspan="2" style="background-color: #6c757d; color: white;">
    <h4>Pet Information</h4></td>
    </tr>
      <tr>
        <td>Pet Name:</td>
        <td ><form:input path="petName" /></td>
      </tr>
      <tr>
        <td>Age:</td>
        <td><form:input path="petAge" /></td>
        <%-- <font color="red"><form:errors path="age" /></font> --%>
      </tr>
      <tr>
        <td>Place:</td>
        <td><form:input path="petPlace" /></td>
      </tr>

      <tr>
      <td colspan="2" style="text-align:center;">
        <input type="submit" value="Add Pet" class="btn btn-primary" style="color: white;" />
        <input type="reset" value="Cancel" class="btn btn-primary" style="color: white;" />
        </td>
      </tr>
    </table>

  </form:form>

</body>
</html>