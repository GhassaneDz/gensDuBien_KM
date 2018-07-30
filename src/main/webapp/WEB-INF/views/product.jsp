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
	<c:url value="/produit/delete.html?id=" var="deleteUrl" />
	<c:url value="/produit/create.html" var="createUrl" />
	<c:url value="/img" var="imgUrl" />
	<div class="container-fluid">
		<h1>Liste des produits collectés</h1>
		<div class="row">
			<div class="col-9">
				<div class="table-responsive">


					<table class="table">

						<thead>
							<tr>
								<th scope="col">Produit collecté</th>
								<th scope="col">Rayon</th>
								<th scope="col">Numéro du produit</th>
								<th scope="col">Date de réception</th>
								<th scope="col">Date d'expiration</th>
								<th scope="col">Nombre de lots</th>
								<th scope="col">Mise à jour</th>
								<th scope="col">Suppression</th>

							</tr>
						</thead>
						<c:forEach var="product" items="${ listProduct}">

							<tbody>
								<tr>
									<th scope="row">${product.name}</th>
									<td>${product.section}</td>
									<td>${product.productNumber}</td>
									<td>${product.receptionDate}</td>
									<td>${product.expirationDate}</td>
									<td>${product.numberLots}</td>
									<td>
										<img src="${imgUrl}/Text-Edit-icon.png" alt="" class="img-fluid mid-logo logo-action">
									</td>
									<td>
										<a href="${deleteUrl}${product.id}">
											<img src="${imgUrl}/trash-512.png" alt="" class="img-fluid mid-logo logo-action">
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
						<input type="text" class="form-control" name="name"
							placeholder="saisir le produit collecté">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="section"
							placeholder="saisir le rayon">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="productNumber"
							placeholder="saisir le numéro du produit">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" name="receptionDate"
							placeholder="saisir la date de réception">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" name="expirationDate"
							placeholder="saisir la date d'expiration">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="numberLots"
							placeholder="saisir le nombre de lots du produit">
					</div>

					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="templates/footer.jsp" />
</body>
</html>