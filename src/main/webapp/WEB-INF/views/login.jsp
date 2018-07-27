<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="templates/header.jsp" />
</head>
<body>
	<div class="container">
		<h2>Veuillez vous authenitifier</h2>
		<form action="<c:url value="/login"/>" method="post">
			<div class="form-group">
				<label for="login">Login Volentaire</label> <input id="login"
					name="username" required />
			</div>
			<div class="form-group">
				<label for="pwd">Mot de passe</label> <input type="password"
					id="pwd" name="password" required />
			</div>
			<button class="btn btn-primary">Valider</button>
		</form>
	</div>
</body>
</html>