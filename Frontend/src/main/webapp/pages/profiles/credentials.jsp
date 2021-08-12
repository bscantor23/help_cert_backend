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
			<div class="container mb-5 pt-2">
				<div class="row justify-content-center align-items-center">
					<div class="col-md-6">
						<div class="d-flex justify-content-center">
							<div class="select1-d p-3 shadow">
								<form action="">
									<div class="form-group w-75 justify-content-center">
										<label class="fs-5"> Contraseña Actual </label>
										<input
											type="email"
											class="form-control-d shadow-sm"
											id="exampleInputEmail1"
											aria-describedby="emailHelp"
											placeholder="Enter password"
										/>
									</div>
									<div class="form-group w-75 justify-content-center">
										<label class="fs-5"> Contraseña Nueva </label>
										<input
											type="email"
											class="form-control-d shadow-sm"
											id="exampleInputEmail1"
											aria-describedby="emailHelp"
											placeholder="Enter password"
										/>
									</div>

									<button class="btn-d2 my-1 p-2 shadow float-right btn">GUARDAR</button>
								</form>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<img class="img_cert-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/password.svg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/pages/canvas/footer.jsp" />
