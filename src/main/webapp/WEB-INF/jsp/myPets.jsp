<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <title>Pet Details</title>

   <!--   <link href="/cs1/src/main/resources/css/style.css" rel="stylesheet">-->
    <style>
    .table {
   margin: auto;
   width: 50%; 
}
  a.edit-link.clicked {
    color: black;
  }
    </style>
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
          <a class="nav-link text-white" href="new">Add Pet</a>
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

<div class="container" >

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

    </c:if>

</div>


	<div align="center">	
		
		
		<br/><br/>	
		<table class="table table-bordered">
			<thead>
			<tr>
    <td colspan="4" style="background-color: #6c757d; color: white;">
    <h4>Pet List</h4></td>
    </tr>
				<tr>
					<th>Pet ID</th>
					<th>Pet Name</th>
					<th>Pet Age</th>
					<th>Pet Place</th>						
				</tr>
			</thead>
			<c:forEach var="pet" items="${petList}">
				<tbody>
					<tr>
						<td>${pet.petId}</td>
						<td>${pet.petName}</td>
						<td>${pet.petAge}</td>
						<td>${pet.petPlace}</td>
						
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
