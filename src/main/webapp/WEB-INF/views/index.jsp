<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="templates/header.jsp" />
</head>
<body>

	<div class="container-fluid">
		<h1>Liste des services</h1>
		<div class="row">
			<div class="col-sm">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" 
						href="<c:url value='/benevole.html' />">Gérer les bénévoles</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/beneficiaire.html" />"> Gérer les
							bénéficiares</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/produit.html" />">Gérer les produits collectés</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/evenement.html" />">Gérer les événements</a></li>
					<li class="nav-item"><a class="nav-link disabled" />Emailing</a></li>
				</ul>

			</div>
			<div class="col-sm card-deck">
				<c:forEach var="event" items="${listEvent}">
					<div class="card" style="width: 18rem;">

						<c:if test="${event.type=='Collecte'}">
							<img class="card-img-top" src="img/donations.jpg"
								alt="Card image cap">
						</c:if>
						<c:if test="${event.type=='Distribution'}">
							<img class="card-img-top" src="img/solidarite.jpg"
								alt="Card image cap">
						</c:if>


						<div class="card-body">
							<h5 class="card-title">${event.type} du ${event.eventDate}</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="<c:url value="/evenement.html" />"" class="btn btn-primary">Aller à événement</a>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>


	
	<div class="d-flex align-items-center justify-content-center"></div>
	<footer class="page-footer font-small blue">
	
	
		<!-- Copyright -->
		<div class="footer-copyright text-center text-white fixed-bottom bg-primary py-3 d-flex justify-content-between">
			<div></div>
			<p>©2018 Copyright: MKheznadji Production </p>
			<button class="btn btn-warning mr-2 ">
				<a href="<c:url value="/logout" />">Déconnexion</a>
			</button>
		</div>
		<!-- Copyright -->

</footer>
</body>
</html>