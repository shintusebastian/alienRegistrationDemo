<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JPA learning</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<%--
<div>
<form action="addAlien">
<input type="text" name="aid" placeholder="Alien ID"><br>
<input type="text" name="aname" placeholder="Alien name"><br>
<input type="text" name="tech" placeholder="Alien tech"><br>
<input type="submit"><br>
</form>
</div>
--%>
<form action="addAlien">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationServer01">Alien ID</label>
      <input type="text" name ="aid" class="form-control is-valid"
      id="validationServer01" placeholder="Please enter Alien ID" >

    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Alien Name</label>
      <input type="text" name="aname" class="form-control is-valid" id="validationServer02"
      placeholder="Please enter Alien name" >

    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServerUsername">Alien Tech</label>
      <div class="input-group">

        <input type="text" name="tech" class="form-control is-invalid"
        id="validationServerUsername" placeholder="Please enter alien technology" aria-describedby="inputGroupPrepend3" required>
        <div class="invalid-feedback">

        </div>
      </div>
    </div>
  </div>


  <button class="btn btn-primary" type="submit">Submit form</button>
</form>

<%--
<div>
<form action="getAlien">
<input type="text" name="aid" placeholder="Alien ID"><br>
<input type="submit"><br>
</div>
--%>
<div>
<form action="getAlien" >
  <input type="text" name="aid" placeholder="Alien ID"><br>

    <button class="btn btn-primary" type="submit">Get Alien Id</button>
 </div>
</form>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>