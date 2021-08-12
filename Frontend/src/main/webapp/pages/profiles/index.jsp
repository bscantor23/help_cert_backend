<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
	<div class="row">
		<div class="col-3 aside-menu">
			<jsp:include page="/pages/dashboards/components/team_panel.jsp" />
		</div>
		<div class="col-9 principal-content px-5">
			<jsp:include page="/pages/canvas/breadcrumb.jsp" />
			<div class="pt-4">
				<div class="row">
					<div class="col-md-9 profile-content-d">
						<div class="row g-3 align-items-center">
							<div class="col-md-2">
								<p class="">Apellidos</p>
							</div>
							<div class="col-md-4">
								<p class="form-control">Herrera</p>
							</div>
							<div class="col-md-2">
								<p class="">Nombres</p>
							</div>
							<div class="col-md-4">
								<p class="form-control">Claudia</p>
							</div>
						</div>
						<hr />
						<div class="row align-items-center">
							<div class="col-md-2">
								<p class="form-control">CC</p>
							</div>
							<div class="col-md-3">
								<p class="form-control">1030598594</p>
							</div>
							<div class="col-md-2">
								<p class="">Jornada:</p>
							</div>
							<div class="col-md-4">
								<p class="form-control">Fines de Semana</p>
							</div>
						</div>
						<hr />
						<div class="row align-items-center">
							<div class="col-md-2">
								<p class="">Cargo:</p>
							</div>
							<div class="col-md-6">
								<p class="form-control">Funcionario</p>
							</div>
							<div class="col-md-4">
								<p class="form-control">Femenino</p>
							</div>
						</div>
						<hr />
						<div class="row align-items-center">
							<div class="col-md-2">
								<p class="">Telefono:</p>
							</div>
							<div class="col-md-3">
								<p class="form-control">3115144423</p>
							</div>
							<div class="col-md-2">
								<p class="">Email:</p>
							</div>
							<div class="col-md-5">
								<p class="form-control">cherrera@misena.edu.co</p>
							</div>
						</div>
						<hr />
						<div class="row align-items-center">
							<div class="col-md-2">
								<p class="">Ciudad:</p>
							</div>
							<div class="col-md-3">
								<p class="form-control">Bogotá</p>
							</div>
							<div class="col-md-2">
								<p class="">Direccion:</p>
							</div>
							<div class="col-md-5">
								<p class="form-control">Calle 100 # 20-14</p>
							</div>
						</div>
						<hr />
						<div class="row align-items-center">
							<div class="col-md-6">
								<p class="d-inline">Fecha-Creacion:</p>
								<p class="d-inline form-control mx-2">18/09/2020</p>
							</div>
							<div class="col-md-6">
								<p class="d-inline">Fecha-Actualización:</p>
								<p class="d-inline form-control mx-2">18/09/2020</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="d-flex flex-column justify-content-center align-items-center">
							<img class="img-fluid" src="${pageContext.request.contextPath}/assets/imgs/profile.svg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/pages/canvas/footer.jsp" />
	</div>
</div>
