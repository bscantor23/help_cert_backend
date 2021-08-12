<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:include page="/pages/homepages/components/header.jsp" />

<body class="res-body">
	<jsp:include page="components/nav.jsp" />
	<div class="container-fluid homepage res-homepage p-0 pt-5">
		<div class="row h-100 mx-3 justify-content-center align-items-center">
			<div class="col-md-6 p-0  order-md-2">
				<div class="d-flex mx-3 justify-content-center justify-content-md-start ">
					<div class="recupera-d shadow">
						<div class="form-group-d pt-3 px-5">
							<form class="">
								<h3 class="fw-bold text-center my-3">Recupera Tu Cuenta</h3>
								<label class="fs-5 my-3">
									Ingresa tu correo electrónico para buscar tu cuenta y enviar una nueva contraseña.
								</label>
								<div class="form-group w-75 justify-content-center">
									<input
										type="email"
										class="form-control"
										id="exampleInputEmail1"
										aria-describedby="emailHelp"
										placeholder="Enter email"
									/>
								</div>
								<button class="btn-d2 my-3 p-2 float-end btn ">GUARDAR</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 order-md-1">
				<div class="d-flex mx-3 justify-content-center justify-content-md-end">
					<img class="img_cert-d1 img_fluid" src="${pageContext.request.contextPath}/assets/imgs/password.svg" alt="" />
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/pages/homepages/components/footer.jsp" />
</body>
