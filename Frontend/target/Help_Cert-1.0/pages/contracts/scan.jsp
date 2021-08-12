<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
	<div class="row">
		<div class="col-3 aside-menu">
			<jsp:include page="/pages/dashboards/components/functionary_panel.jsp" />
		</div>
		<div class="col-9 principal-content px-5">
			<jsp:include page="/pages/canvas/breadcrumb.jsp" />
			<div class="container mb-5 pt-5">
				<div class="row justify-content-center align-items-center">
					<div class="col-md-6">
						<div class="d-flex justify-content-center">
							<div class="select1-d p-3 shadow">
								<form action="">
									<div class="row justify-content-center py-2 panel-se align-items-center">
										<h5 class="fw-bold text-center">Escaneo de archivo</h5>
									</div>

									<label class="uploadLabel shadow-sm">
										<input type="file" class="uploadButton "/>
										<a href="" class="btn btn-default circle my-2 d-inline" style="border-radius: 50%"
											><span class="fas text-white fas fa-file-download"></span
										></a>
										<div class="d-inline bg-white ">Seleccionar Archivo</div>
									</label>
									<div class="row justify-content-center">
										<button class="btn-d2 my-3 p-2 btn float-right shadow" type="submit">GUARDAR</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<img class="img_cert-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/contract.svg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/pages/canvas/footer.jsp" />
