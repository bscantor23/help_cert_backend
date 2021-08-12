<%@page contentType="text/html" pageEncoding="UTF-8" %>

    <jsp:include page="/pages/canvas/header.jsp" />
    <jsp:include page="/pages/canvas/nav.jsp" />

    <div class="container-fluid content-container bg-white">
        <div class="row">
            <div class="col-12 principal-content pl-5">
                <h5 class="text-brown-muted">Contratos -> Seleccion Contrato </h5>
                <hr class="w-50">
                <div class="row mt-3">
                    <div class="col-md-6">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <button class="btn text-white btn-default" type="button"><i
                                        class="fas fa-search"></i>Buscar</button>
                            </div>
                            <input type="text" class="form-control" id="validationDefaultUsername"
                                placeholder="Numero De Documento" aria-describedby="basic-addon1" required />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="checkbox" id="activar" />
                            <label for="activar">ACTIVO</label>
                        </div>
                    </div>
                </div>
                <div class="container scroll-d">
                    <div class="row">
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia Carolina</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-4 mb-4 mt-3">
                            <div class="card-d">
                                <div class="card-body-d">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Id.</h5>
                                            <h4 class="card-valor-d1"><b>32525523</b></h4>
                                        </div>                                                                        
                                        <div class="row ">
                                            <div class="col-md-8">
                                                <img class="foto-d"
                                                    src="${pageContext.request.contextPath}/assets/imgs/contratico.svg"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h5 class="card-title-d1">Tipo Doc</h5>
                                            <h4 class="card-valor-d1"><b>CC</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Numero.Doc</h5>
                                            <h4 class="card-valor-d1"><b>1030598594</b></h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Apellido</h5>
                                            <h4 class="card-valor-d1"><b>Perez Hernandez</b></h4>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="card-title-d1">Nombres</h5>
                                            <h4 class="card-valor-d1"><b>Natalia</b></h4>
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