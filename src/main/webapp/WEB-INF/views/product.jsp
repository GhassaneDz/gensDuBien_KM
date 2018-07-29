<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<jsp:include page="templates/header.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <caption>Liste des bénévoles</caption>
<div class="table-responsive">

     
<table class="table">

  <thead>
    <tr>
      <th scope="col">Numéro de Bénévole</th>
      <th scope="col">Prénom</th>
      <th scope="col">nom</th>
      <th scope="col">Date de naissance</th>
      <th scope="col">email</th>
      <th scope="col">téléphone</th>
      <th scope="col">Adresse</th>
      
    </tr>
  </thead>
    <c:forEach var ="volunteer" items="${ listVolunteer}">

  <tbody>
    <tr>
      <th scope="row">${volunteer.volunteerNumber} </th>
      <td> ${volunteer.firstname}</td>
      <td> ${volunteer.lastname} </td>
      <td> ${volunteer.birthDate} </td>
      <td> ${volunteer.email} </td>
      <td> ${volunteer.tel} </td>
      <td> ${volunteer.address} </td>
    </tr>
  </tbody>
   </c:forEach>
</table>
</div>
<jsp:include page="templates/footer.jsp" />
</body>
</html>