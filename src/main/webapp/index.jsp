<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MyAppjs">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Thymeleaf</title>

 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
 <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

 
  <script src="<c:url value="/resources/angularjs/App.js" />"></script>
  <script src="<c:url value="/resources/angularjs/App-Controllers.js" />"></script>
  <script src="<c:url value="/resources/angularjs/App-services.js" />"></script>
  
  <%-- <spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="mainCss" /> --%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<%-- <spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootJs" /> --%>

<%-- <spring:url value="/resources/angularjs/App.js" var="AppJs" /> --%>
<%-- <spring:url value="/resources/angularjs/App-Controllers.js" var="controllerJs" /> --%>
<%-- <spring:url value="/resources/angularjs/App-services.js" var="servicesJs" /> --%>

<%-- <link href="${mainCss}" rel="stylesheet" /> --%>
<%-- <script src="${bootJs}"></script> --%>
<%-- <script src="${AppJs}"></script> --%>
<%-- <script src="${controllerJs}"></script> --%>
<%-- <script src="${servicesJs}"></script> --%>
</head>


<body>

<div class="container"  >
  <h2>Vertical (basic) form</h2>
  <form action=""<%=request.getContextPath()%>/alumnosCtrl/">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

<div class="error-desc">
            Lo sentimos, esta funcionalidad a&uacute;n no se encuentra implementada.
            <form class="form-inline m-t" role="form">
                <a href="<%=request.getContextPath()%>/alumnosCtrl" type="submit" class="btn btn-primary">Regresar</a>
            </form>
</div>

<div ng-controller="Mycontrol"> 
<button type="button" class="btn btn-success" ng-click="getDatos()">Success</button>
<br>
<p>Nombre:</p>
<input  id="name"  name="name" value={{alumno.nombre}}>
<p>Apellido:</p>
<input  id="surname"  name="surname" value={{alumno.apellido}}>
</div>

</body>
</html>
  
