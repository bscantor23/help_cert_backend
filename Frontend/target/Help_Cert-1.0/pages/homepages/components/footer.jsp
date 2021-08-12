<%@page contentType="text/html" pageEncoding="UTF-8"%> <% String method = (String) request.getAttribute("method"); if
(method != null) { %>

<jsp:include page="/pages/alerts/alerts.jsp" />

<% }%>

<footer class="bg-primary-color py-4 d-flex flex-column align-items-center">
	<img src="${pageContext.request.contextPath}/assets/logos/HC_white.png" alt="logo_HC_image" />
	<hr class="line-style-3" />
	<p class="text-center text-light fs-5 w-75 m-0">© 2021 Help_Cert Todos los derechos reservados</p>
</footer>
<script src="${pageContext.request.contextPath}/vendor/alerts/alerts.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"
></script>
