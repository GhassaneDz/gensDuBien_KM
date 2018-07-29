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
<caption>Liste des événements</caption>

<div class="table-responsive">

     
<table class="table">
  
  <thead>
    <tr>
      <th scope="col">Numéro de l'événement</th>
      <th scope="col">date de l'événement</th>
      <th scope="col">type</th>
 
      
    </tr>
  </thead>
    <c:forEach var ="event" items="${ listEvent}">

  <tbody>
    <tr>
      <th scope="row">${event.eventNumber} </th>
      <td> ${event.eventDate}</td>
      <td> ${event.type} </td>
     
    </tr>
  </tbody>
   </c:forEach>
</table>
</div>

<jsp:include page="templates/footer.jsp" />
</body>
</html>