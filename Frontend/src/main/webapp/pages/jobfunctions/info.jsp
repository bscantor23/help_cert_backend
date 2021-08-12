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
					<div class="col-md-9">
						<div class="row align-items-center">
							<div class="col-md-2">
								<p class="">Titulo:</p>
							</div>
							<div class="col-md-7">
								<p class="form-control">Docente en Programacion</p>
							</div>
						</div>
						<hr class="linea-d1 mr-5" />
						<div class="scroll-cargos-d pr-4 custom-scroll">
							<p class="mb-3">Objeto Contrato:</p>
							<p class="form-d text-muted p-2">
								Los objetivos de la programación didáctica son los resultados que esperamos lograr una vez completado el proceso
								de aprendizaje. Son parte esencial tanto de la programación como de sus unidades. En este artículo veremos la
								definición de objetivos didácticos y cómo redactarlos en la programación didáctica. Lorem ipsum dolor sit amet
								consectetur, adipisicing elit. Maxime totam doloremque sed suscipit cupiditate nemo cum modi excepturi placeat,
								sint laudantium error reprehenderit mollitia cumque? Fuga facilis nam itaque praesentium.
							</p>

							<hr />
							<p class="mb-3">Obligaciones Específicas:</p>
							<p class="form-d text-muted p-2">
								Los objetivos de la programación didáctica son los resultados que esperamos lograr una vez completado el proceso
								de aprendizaje. Son parte esencial tanto de la programación como de sus unidades. En este artículo veremos la
								definición de objetivos didácticos y cómo redactarlos en la programación didáctica. Lorem ipsum dolor sit amet
								consectetur, adipisicing elit. Maxime totam doloremque sed suscipit cupiditate nemo cum modi excepturi placeat,
								sint laudantium error reprehenderit mollitia cumque? Fuga facilis nam itaque praesentium.
							</p>
							<hr class="linea-d1" />
							<div class="row justify-content-center">
								<div class="d-inline m-1">
									<p class="d-inline text-size-1">Fecha-Creación:</p>
									<p class="d-inline form-control text-size-1">18/09/2020</p>
								</div>
								<div class="d-inline m-1">
									<p class="d-inline text-size-1">Fecha-Actualización:</p>
									<p class="d-inline form-control text-size-1">18/09/2020</p>
								</div>
								<div class="d-inline m-1">
									<p class="d-inline text-size-1">Estado:</p>
									<p class="d-inline form-control text-size-1">Activo</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="row justify-content-center">
							<p class="form-obligaciones-d d-inline">Código:</p>
							<p class="form-obligaciones-d d-inline text-muted">121983</p>
						</div>
						<hr class="linea-d1" />
						<div class="row justify-content-center">
							<p class="form-obligaciones-d d-inline">Contratos:</p>
							<p class="form-obligaciones-d d-inline text-muted">5</p>
						</div>
						<hr class="linea-d1" />
						<div class="row justify-content-center">
							<a class="icono-d d-flex justify-content-center align-items-center" href=""
								><i class="fas fa-check-circle iconos-d"></i
							></a>
						</div>
						<div class="row justify-content-center">
							<a class="icono-d d-flex justify-content-center align-items-center" href=""
								><i class="fas fa-eye iconos-d"></i
							></a>
						</div>
						<div class="row justify-content-center">
							<a class="icono-d d-flex justify-content-center align-items-center" href=""
								><i class="fas fa-trash-alt iconos-d"></i
							></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/pages/canvas/footer.jsp" />
</div>
