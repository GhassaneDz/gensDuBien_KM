<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="templates/header.jsp" />
</head>
<body>



	<div class="container">
		<div class="row">
			<div class="col-sm">
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active" href="#"></a>Gérer
						les bénévoles</li>
					<li class="nav-item"><a class="nav-link" href="#"> Gérer
							les bénéficiares</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Gérer
							les dons</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Gérer
							les événements</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Emailing</a>
					</li>
				</ul>

			</div>
			<div class="col-sm">
				<c:forEach var="event" items="${listEvent}">
					<div class="card" style="width: 18rem;">
						<img class="card-img-top" src=".../100px180/" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Collecte du 01/08/2018</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Go somewhere</a>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>





	<%@ include file="templates/footer.jsp"%>