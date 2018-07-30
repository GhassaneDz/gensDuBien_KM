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
<c:url value="/benevole/delete.html?id=" var="deleteUrl" />
<c:url value="/benevole/create.html" var="createUrl" />
<c:url value="/img" var="imgUrl" />
<div class="container-fluid">
	<h1>Liste des bénévoles</h1>
	<div class="row">
		<div class="col-9">
			<div class="table-responsive">


				<table class="table">

					<thead>
						<tr>
							<th scope="col">Numéro du bénévole</th>
							<th scope="col">Prénom</th>
							<th scope="col">nom</th>
							<th scope="col">Date de naissance</th>
							<th scope="col">email</th>
							<th scope="col">téléphone</th>
							<th scope="col">Mise à jour</th>
							<th scope="col">Suppression</th>

						</tr>
					</thead>
					<c:forEach var="volunteer" items="${ listVolunteer}">

						<tbody>
							<tr>
								<th scope="row">${volunteer.volunteerNumber}</th>
								<td>${volunteer.firstname}</td>
								<td>${volunteer.lastname}</td>
								<td>${volunteer.birthDate}</td>
								<td>${volunteer.email}</td>
								<td>${volunteer.tel}</td>
									<td> 
									<img src="${imgUrl}/Text-Edit-icon.png"  alt="" class="img-fluid mid-logo logo-action" >
									</td>
								<td>
								<a href="${deleteUrl}${volunteer.id}">
								<img  src="${imgUrl}/trash-512.png" alt="" class="img-fluid mid-logo logo-action" >
								</a>
							
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="col-3">
			<h1>Formulaire d'ajout</h1>
		<form method="post" action="${createUrl }">
					<div class="form-group">
						<input
							type="text" class="form-control"  name="volunteerNumber" placeholder="saisir le numéro du bénévole"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control"  name="firstname" placeholder="saisir le prénom du bénévole"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="lastname"  placeholder="saisir le nom du bénévole"> 
					</div>
					<div class="form-group">
						<input
							type="date" class="form-control" name="birthDate" placeholder="saisir la date de naissance de bénévole"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name = "email" placeholder="saisir l'email"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="tel" placeholder="saisir le téléphone du bénévole"> 
					</div>
					
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
		</div>
	</div>
</div>
	<jsp:include page="templates/footer.jsp" />
</body>
</html>