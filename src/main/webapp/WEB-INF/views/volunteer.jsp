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
	<h1>Liste des bénévoles</h1>
	<div class="row">
		<div class="col-9">
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
								<td>${volunteer.address}</td>
									<td> <img src="img/Text-Edit-icon.png" alt="" class="img-fluid mid-logo logo-action"></td>
								<td><img src="img/trash-512.png" alt="" class="img-fluid mid-logo logo-action"></td>
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
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email"> <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password">
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</div>
	<jsp:include page="templates/footer.jsp" />
</body>
</html>