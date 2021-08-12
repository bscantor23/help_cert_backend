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
					<div class="row">
						<div class="col-md-10">
							<div class="row">
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Fecha Inicio</div>
										</div>
										<input type="date" class="form-control" id="inlineFormInputGroup" />
									</div>
								</div>
								<div class="col-6">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Fecha Fin</div>
										</div>
										<input type="date" class="form-control" id="inlineFormInputGroup" />
									</div>
								</div>
							</div>
							<hr />
							<div class="row">
								<div class="col-5">
									<label class="sr-only" for="inlineFormInputGroup">Salario</label>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Salario</div>
										</div>
										<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="" />
									</div>
								</div>
								<div class="col-7">
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">Labor</div>
										</div>
										<select id="tipo-doc-m " class="form-control rounded-0">
											<option>Contrato por prestación</option>
											<option>Contrato indefinido</option>
											<option>Contrato por obra labor</option>
										</select>
									</div>
								</div>
							</div>
							<hr />
							<div class="custom-scroll pr-4 scroll-functions">
								<textarea
									class="form-d form-control"
									id="exampleFormControlTextarea1"
									placeholder="Funciones Especificas"
									rows="8"
								></textarea>
							</div>
							<hr />
						</div>
						<div class="col-md-2">
							<div class="row justify-content-end">
								<a class="icono-s-d d-flex justify-content-center align-items-center mr-4" href="">
									<i class="text-white fas fa-undo-alt"></i>
								</a>
							</div>
							<div class="row h-100 align-items-end">
								<div>
									<button class="btn-d2 p-2 shadow">CREAR</button>
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
