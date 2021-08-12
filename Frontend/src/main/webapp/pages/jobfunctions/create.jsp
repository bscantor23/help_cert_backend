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
				<form class="">
					<div class="row">
						<div class="col-md-8">
							<div class="row align-items-center">
								<div class="col-md-2">
									<p class="">Título:</p>
								</div>
								<div class="col-md-7">
									<input type="text" class="form-control" placeholder="" />
								</div>
							</div>
							<hr class="linea-d1 mr-5" />
							<div class="scroll-cargos-d pr-4 custom-scroll">
								<div class="row">
									<div class="col-md-5">
										<p class="form-control-d">Objeto Contrato:</p>
									</div>
								</div>
								<br />
								<div class="col-md-12 p-0">
									<textarea class="form-d" rows="8"></textarea>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-8">
										<p class="form-control-d">Obligaciones Especificas:</p>
									</div>
								</div>
								<br />
								<div class="col-md-12 p-0">
									<textarea class="form-d" rows="8"></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="row justify-content-center">
								<button class="btn-d2 p-2 shadow">CREAR</button>
							</div>
							<div class="row justify-content-center">
								<img class="img_cert-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/agreement.svg" alt="" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/pages/canvas/footer.jsp" />
</div>
