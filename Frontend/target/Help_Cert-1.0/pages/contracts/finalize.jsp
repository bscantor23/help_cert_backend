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
				<div class="container-scan-m position-relative">
					<div class=" position-absolute return-button">
						<button class="btn-d2 p-2 shadow">CULMINAR</button>
					</div>
					<div class="row flex-column justify-content-center align-items-center">
						<img
							class="img-fluid img-finalize text-center"
							src="${pageContext.request.contextPath}/assets/imgs/complete.svg"
							alt=""
						/>
						<div>
							<h1 class="text-center text-muted">¡FELICIDADES!</h1>
						</div>
						<div>
							<h4 class="text-center text-muted font-weight-normal">
								Un nuevo contrato se encuentra registrado en el sistema
							</h4>
							<hr />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/pages/canvas/footer.jsp" />
</div>
