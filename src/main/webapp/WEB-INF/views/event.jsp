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
									<td><img src="img/Text-Edit-icon.png" alt=""
										class="img-fluid mid-logo logo-action"></td>
									<td><img src="img/trash-512.png" alt=""
										class="img-fluid mid-logo logo-action"></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="col-3">
				<h1>Formulaire d'ajout</h1>
				<form>
					<div class="form-group">
						<input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="saisir le numéro de l'événement"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="saisir la date de l'événement"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="saisir le type e l'événement "> 
					</div>
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="templates/footer.jsp" />
</body>
</html>