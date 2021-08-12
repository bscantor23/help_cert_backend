<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
				<form class="">
					<div class="row align-items-center">
						<div class="col-md-9 profile-content-form-d">
							<div class="row g-3 align-items-center">
								<div class="col-md-2">
									<label class="m-0" for="inputCiudad">Apellidos</label>
								</div>
								<div class="col-md-4">
									<input type="text" class="form-control" placeholder="Herrera" disabled />
								</div>
								<div class="col-md-2">
									<label class="m-0" for="inputCiudad">Nombres</label>
								</div>
								<div class="col-md-4">
									<input type="text" class="form-control" placeholder="Claudia" disabled />
								</div>
							</div>
							<hr />
							<div class="row align-items-center">
								<div class="col-md-2">
									<input type="text" disabled class="form-control" placeholder="CC" />
								</div>
								<div class="col-md-3">
									<input type="text" disabled class="form-control" placeholder="1030598594" />
								</div>
								<div class="col-md-2">
									<label class="m-0" for="inputJornada">Jornada</label>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control" placeholder="Fines de Semana" />
								</div>
							</div>
							<hr />
							<div class="row align-items-center">
								<div class="col-md-2">
									<label class="m-0" for="inputCargo">Cargo</label>
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="Funcionario" />
								</div>
								<div class="col-md-2">
									<label class="m-0" for="inputTelefono">Género</label>
								</div>
								<div class="col-md-2">
									<select id="tipo-genero" class="form-control">
										<option>F</option>
										<option>M</option>
										<option>O</option>
									</select>
								</div>
							</div>
							<hr />
							<div class="row align-items-center">
								<div class="col-md-2">
									<label class="m-0" for="inputTelefono">Telefono</label>
								</div>
								<div class="col-md-3">
									<input type="text" class="form-control" placeholder="3115144414" />
								</div>
								<div class="col-md-2">
									<label for="inputEmail">Email</label>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control" placeholder="cherrera@misena.edu.co" />
								</div>
							</div>
							<hr />
							<div class="row align-items-center">
								<div class="col-md-2">
									<label class="m-0" for="inputCiudad">Ciudad</label>
								</div>
								<div class="col-md-3">
									<select class="form-control">
										<option>Bogotá</option>
										<option>Medellin</option>
										<option>Barranquilla</option>
									</select>
								</div>
								<div class="col-md-2">
									<label class="m-0" for="inputDireccion">Dirección</label>
								</div>
								<div class="col-md-5">
									<input type="text" class="form-control" placeholder="Calle 100 # 20-14" />
								</div>
							</div>
							<hr />
						</div>
						<div class="col-md-3">
							<div class="d-flex flex-column justify-content-center align-items-center">
								<div class="mb-4">
									<img class="img-fluid" src="${pageContext.request.contextPath}/assets/imgs/profile.svg" alt="" />
								</div>
								<button class="btn-d2 my-1 p-2 shadow btn">GUARDAR</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

		<jsp:include page="/pages/canvas/footer.jsp" />
	</div>
</div>
