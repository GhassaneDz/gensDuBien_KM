	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Footer -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
	<div class="d-flex align-items-center justify-content-center"></div>
	<footer class="page-footer font-small blue">
	
	
		<!-- Copyright -->
		<div class="footer-copyright text-center text-white fixed-bottom bg-primary py-3 d-flex justify-content-between">
			<button class="btn btn-warning mr-2 ">
				<a href="<c:url value="/disconnect.html" />">Retour à l'accueil</a>
			</button>
			<p>©2018 Copyright: MKheznadji Production </p>
			<button class="btn btn-warning mr-2 ">
				<a href="<c:url value="/logout" />">Déconnexion</a>
			</button>
		</div>
		<!-- Copyright -->

</footer>