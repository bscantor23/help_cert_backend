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
			<div class="pt-2">
				<div class="profile-content-form-m">
					<div class="row">
						<div class="col-md-8">
							<div class="row">
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Apellidos</div>
										</div>
										<p class="form-control">Cifuentes Barbosa</p>
									</div>
								</div>
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Nombres</div>
										</div>
										<p class="form-control">Daniel Camilo</p>
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-md-5">
									<div class="input-group-prepend">
										<p class="input-group-text rounded-0 w-auto pr-4">CC</p>
										<p class="form-control rounded-0">389129081</p>
									</div>
								</div>
								<div class="col-md-5">
									<label class="sr-only" for="inlineFormInputGroup">Jornada</label>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Jornada</div>
										</div>
										<p class="form-control">Fin de Semana</p>
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-9">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">Cargo</div>
										</div>
										<p class="form-control">Instructor de Software</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="input-group-prepend">
										<div class="input-group-text rounded-0">Género</div>
										<p class="form-control rounded-0">F</p>
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-6">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">@ Email</div>
										</div>
										<p class="form-control">DanieL@gmail.com</p>
									</div>
								</div>
								<div class="col-6">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">Telefono</div>
										</div>
										<p class="form-control">3214592538</p>
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-5">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Ciudad</div>
										</div>
										<p class="form-control">Bogotá D.C</p>
									</div>
								</div>
								<div class="col-7">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Direccion</div>
										</div>
										<p class="form-control">cll 130c #103a-23</p>
									</div>
								</div>
							</div>
							<hr />
						</div>
						<div class="col-md-4">
							<div class="container">
								<div class="row mb-3 justify-content-center">
									<div class="col-md-8">
										<label class="sr-only" for="inlineFormInputGroup">Id</label>
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">Id</div>
											</div>
											<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="3524651" />
										</div>
										<label class="sr-only" for="inlineFormInputGroup">Contrato</label>
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">Contratos</div>
											</div>
											<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="3" />
										</div>
									</div>
								</div>
								<div class="row align-items-center">
									<div class="col-md-9">
										<img class="img-fluid" src="${pageContext.request.contextPath}/assets/imgs/profile.svg" alt="" />
									</div>
									<div class="col-md-3">
										<div class="d-flex flex-column align-items-center">
											<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
												><i class="iconos-s-d fas text-white fa-eye"></i
											></a>
											<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
												><i class="iconos-s-d fas text-white fa-marker"></i
											></a>
											<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
												><i class="iconos-s-d fas text-white fa-trash-alt"></i
											></a>
										</div>
									</div>
								</div>
								<div class="row justify-content-center mt-4">
									<div class="col-8">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">Estado</div>
											</div>
											<p class="form-control">Activo</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-5">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">Creación</div>
								</div>
								<p class="form-control">2021-01-13 21:23:01</p>
							</div>
						</div>
						<div class="col-5">
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">Actualización</div>
								</div>
								<p class="form-control">2021-01-13 21:23:01</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/pages/canvas/footer.jsp" />
	</div>
</div>
