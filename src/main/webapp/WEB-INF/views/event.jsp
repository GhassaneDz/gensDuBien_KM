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
	<c:url value="/evenement/delete.html?id=" var="deleteUrl" />
	<c:url value="/evenement/create.html" var="createUrl" />
	<c:url value="/evenement/edit.html?id=" var="editUrl" />
	<c:url value="/img" var="imgUrl" />
	<div class="container-fluid">
		<h1>Liste des événements associatifs</h1>
		<div class="row">
			<div class="col-9">
				<div class="table-responsive">


					<table class="table">

						<thead>
							<tr>
								<th scope="col">Numéro de l'événement</th>
								<th scope="col">Date de l'événement</th>
								<th scope="col">Type</th>
								<th scope="col">Mise à jour</th>
								<th scope="col">Suppression</th>


							</tr>
						</thead>
						<c:forEach var="event" items="${ listEvent}">

							<tbody>
								<tr>
									<th scope="row">${event.eventNumber}</th>
									<td>${event.eventDate}</td>
									<td>${event.type}</td>
									<td>
									<a href="${editUrl}${event.id}"> 
									<img
											src="${imgUrl}/Text-Edit-icon.png" alt=""
											class="img-fluid mid-logo logo-action">
									</a>
									</td>
									<td><a href="${deleteUrl}${event.id}">
									 <img
											src="${imgUrl}/trash-512.png" alt=""
											class="img-fluid mid-logo logo-action">
									</a></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="col-3">
				<h1>Formulaire d'ajout</h1>
				<form method="post" action="${createUrl }">
				
					<c:if test="${not empty event }">
						<input type="hidden" name="id" value="${event.id}"
							placeholder="saisir le numéro de l'événement">

					</c:if>
					<div class="form-group">
						<input type="text" class="form-control" name="eventNumber"
							value="${not empty event? event.eventNumber: ''}"
							placeholder="saisir le numéro de l'événement">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" name="eventDate"
							value="${not empty event? event.eventDate: ''}"
							placeholder="saisir la date de l'événement">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="type"
							value="${not empty event? event.type: ''}"
							placeholder="saisir le type de l'événement ">
					</div>
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="templates/footer.jsp" />
</body>
</html>