<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="templates/header.jsp" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

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
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Login</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Votre login">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mot de passe</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Votre mot de passe">
					</div>
					<button type="submit" class="btn btn-primary">Valider</button>
				</form>
			</div>
		</div>
	</div>
	<div class="d-flex align-items-center justify-content-center"></div>
	
<%@ include file="templates/footer.jsp"%>