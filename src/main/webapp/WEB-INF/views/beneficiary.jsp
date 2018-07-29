<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
      <th scope="col">Nombre Membres de la Famille</th>
      <th scope="col">téléphone</th>
      <th scope="col">Adresse</th>
      
    </tr>
  </thead>
    <c:forEach var ="beneficiary" items="${ listBeneficiary}">

  <tbody>
    <tr>
      <th scope="row">${beneficiary.beneficiaryNumber} </th>
      <td> ${beneficiary.firstname}</td>
      <td> ${beneficiary.lastname} </td>
      <td> ${beneficiary.birthDate} </td>
      <td> ${beneficiary.memeberFamilyNumber} </td>
      <td> ${beneficiary.tel} </td>
      <td> ${beneficiary.address} </td>
    </tr>
  </tbody>
   </c:forEach>
</table>
</div>




<jsp:include page="templates/footer.jsp" />
</body>
</html>