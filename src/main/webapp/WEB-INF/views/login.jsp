<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="templates/header.jsp" />
</head>

<body>
	<div class="container-fluid ">
		<div class="row">
			<div class="col-12">
				<img src="img/logo.jpg" alt="" class="img-fluid mid-logo">
			</div>
		</div>

		<div class="row justify-content-center ">
			<h2>Bienvenue "les gens du bien", veuillez saisir votre login et
				mot de passe :</h2>
		</div>
		<div class="row justify-content-center mt-2">
			<div class="col-6">
				<form action="<c:url value="/login"/>" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Login</label> <input id="login"
							name="username" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mot de passe</label> <input
							type="password" id="password" name="password" required>
					</div>
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>
	
	
	<div class="d-flex align-items-center justify-content-center"></div>

	<footer class="page-footer font-small blue">


		<!-- Copyright -->
		<div
			class="footer-copyright text-center text-white fixed-bottom bg-primary py-3 ">
			<p>©2018 Copyright: MKheznadji Production</p>
		</div>
		<!-- Copyright -->
</body>

</html>