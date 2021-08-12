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
			<div class="pt-2">
				<form class="profile-content-form-m">
					<div class="row">
						<div class="col-md-8">
							<div class="row">
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Apellidos</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" disabled placeholder="Cifuentes Barbosa" />
									</div>
								</div>
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Nombres</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" disabled placeholder="Daniel Camilo" />
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-md-5">
									<div class="input-group-prepend">
										<select id="tipo-doc-m " class="input-group-text rounded-0">
											<option>CC</option>
											<option>TI</option>
											<option>CE</option>
										</select>
										<input type="text" class="form-control rounded-0" placeholder="389129081" disabled />
									</div>
								</div>
								<div class="col-md-5">
									<label class="sr-only" for="inlineFormInputGroup">Jornada</label>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Jornada</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
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
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
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
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-auto">
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text">Telefono</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
									</div>
								</div>

								<div class="col-md-3">
									<div class="input-group-prepend">
										<div class="input-group-text">Género</div>
										<select id="tipo-genero" class="form-control">
											<option>F</option>
											<option>M</option>
											<option>O</option>
										</select>
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
										<select id="ciudad" class="form-control">
											<option>Bogotá</option>
											<option>Medellin</option>
											<option>Barranquilla</option>
										</select>
									</div>
								</div>
								<div class="col-7">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Direccion</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
									</div>
								</div>
							</div>
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
								<div class="d-flex flex-column align-items-center">
									<div class="img-profile-d mb-4">
										<img src="${pageContext.request.contextPath}/assets/imgs/profile.svg" alt="" />
									</div>
									<button class="btn-d2 p-2 shadow">ACTUALIZAR</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

		<jsp:include page="/pages/canvas/footer.jsp" />
	</div>
</div>
