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
<c:url value="/beneficiaire/delete.html?id=" var="deleteUrl" />
<c:url value="/beneficiaire/create.html" var="createUrl" />
<c:url value="/img" var="imgUrl" />
	<div class="container-fluid">
		<h1>Liste des bénéficiares</h1>
		<div class="row">
			<div class="col-9">
				<div class="table-responsive">


					<table class="table">

						<thead>
							<tr>
								<th scope="col">Numéro du Bénévole</th>
								<th scope="col">Prénom</th>
								<th scope="col">Nom</th>
								<th scope="col">Date de naissance</th>
								<th scope="col">Nombre des membres de famille</th>
								<th scope="col">Téléphone</th>
								<th scope="col">Adresse</th>
								<th scope="col">Mise à jour</th>
								<th scope="col">Suppression</th>

							</tr>
						</thead>
						<c:forEach var="beneficiary" items="${ listBeneficiary}">

							<tbody>
								<tr>
									<th scope="row">${beneficiary.beneficiaryNumber}</th>
									<td>${beneficiary.firstname}</td>
									<td>${beneficiary.lastname}</td>
									<td>${beneficiary.birthDate}</td>
									<td>${beneficiary.memeberFamilyNumber}</td>
									<td>${beneficiary.tel}</td>
									<td>
									<img src="${imgUrl}/Text-Edit-icon.png"  alt=""
										class="img-fluid mid-logo logo-action">
										</td>
									<td><a href="${deleteUrl}${beneficiary.id}">	
									<img src="${imgUrl}/trash-512.png" alt=""
										class="img-fluid mid-logo logo-action">
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
							type="text" class="form-control" name="beneficiaryNumber" placeholder="saisir le numéro de bénéficiaire"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="firstname"  placeholder="saisir le prénom du bénéficiaire"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="lastname"  placeholder="saisir le nom du bénéficiaire"> 
					</div>
					<div class="form-group">
						<input
							type="date" class="form-control" name="birthDate"  placeholder="saisir la date de naissance de bénéficiaire"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="memeberFamilyNumber"  placeholder="saisir le nombre des membres de famille"> 
					</div>
					<div class="form-group">
						<input
							type="text" class="form-control" name="tel"  placeholder="saisir le téléphone du bénéficiaire"> 
					</div>
					
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="templates/footer.jsp" />
</body>
</html>