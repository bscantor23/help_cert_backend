<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div id="menu-aside" class="menu-aside-container aside-menu">
	<jsp:include page="/pages/dashboards/components/team_panel.jsp" />
</div>
<div class="container-fluid content-container bg-white">
	<div class="row">
		<div class="col-12 principal-content px-5">
			<jsp:include page="/pages/canvas/breadcrumb.jsp" />
			<div class="pt-2">
				<div class="row justify-content-center align-items-center">
					<jsp:include page="/pages/canvas/search.jsp" />
					<div class="col-md-2 offset-md-2">
						<div class="input-group">
							<button class="btn-d2 p-2 shadow">CREAR</button>
						</div>
					</div>
				</div>
				<hr />
				<div class="container scroll-d custom-scroll">
					<div class="row">
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 mb-3 mt-3">
							<div class="card-d p-3 shadow">
								<div class="row">
									<div class="col-md-7">
										<div class="row">
											<div class="col-md-7">
												<h5 class="card-title-d">Código</h5>
												<h4 class="card-text-d">32525523</h4>
											</div>
											<div class="col-md-5">
												<div class="d-flex flex-column align-items-center">
													<h5 class="card-title-d">Estado</h5>
													<a href="" class="icono-s-d d-flex justify-content-center align-items-center"
														><span class="fas text-white fa-check-circle"></span
													></a>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d">Titulo del Cargo</h5>
												<h4 class="card-text-d">Instructor de programacion</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<h5 class="card-title-d d-inline">Contratos:</h5>
												<h4 class="card-text-d d-inline">03</h4>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="d-flex flex-column justify-content-center align-items-center">
											<img class="foto-d img-fluid" src="${pageContext.request.contextPath}/assets/imgs/foto.svg" alt="" />
											<div class="d-flex justify-content-center mt-3">
												<div class="d-flex justify-content-end">
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-eye"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-marker"></i
													></a>
													<a class="icono-s-d d-flex justify-content-center align-items-center mx-1" href=""
														><i class="fas text-white fa-trash-alt"></i
													></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/pages/canvas/footer.jsp" />
</div>
