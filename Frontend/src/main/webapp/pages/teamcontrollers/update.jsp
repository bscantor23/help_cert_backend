<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="/pages/dashboards/components/team_panel.jsp" />
        </div>
        <div class="col-9 principal-content pl-5">
            <h5 class="text-brown-muted">Funcionarios -> Actualizar Informacion</h5>
            <hr class="w-50">
            <br>
            <div class="container-info-d">
                <div class="row">
                    <div class="col-md-8 profile-content-d">
                        <form class="profile-content-form-m">
                            <div class="row">
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Apellidos</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Apellidos</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" disabled="disabled" placeholder="Cifuentes Barbosa">
                                    </div>
                                  </div>
                                  <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Nombres</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Nombres</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" disabled="disabled" placeholder="Daniel Camilo">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Tipo Doc</div>
                                    <select id="tipo-doc-m" class="form-control">
                                        <option>CC</option>
                                        <option>TI</option>
                                        <option>CE</option>
                                    </select>
                                </div>
                                </div>
                                <div class="col-md-3">
                                    <input type="text" class="form-control" disabled="disabled" placeholder="1458235254">
                                </div>
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Jornada</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Jornada</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div class="row">
                            <div class="col-5">
                                <label class="sr-only" for="inlineFormInputGroup">Cargo</label>
                                <div class="input-group">
                                  <div class="input-group-prepend">
                                    <div class="input-group-text">Cargo</div>
                                  </div>
                                  <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                </div>
                              </div>
                            </div> 
                            <hr>
                            <div class="row">
                                <div class="col-9">
                                    <label class="sr-only" for="inlineFormInputGroup">@ Email</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">@ Email</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Telefono</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Telefono</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            
                                <div class="col-md-4">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Genero</div>
                                    <select id="tipo-genero" class="form-control">
                                        <option>Femenino</option>
                                        <option>Masculino</option>
                                        <option>Otros...</option>
                                    </select>
                                </div>
                                </div>
                            </div>   
                            <hr>
                            <div class="row">
                                <div class="col-5">
                                    <label class="sr-only" for="inlineFormInputGroup">Ciudad</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Ciudad</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                                  <div class="col-5">
                                    <label class="sr-only" for="inlineFormInputGroup">Direccion</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Direccion</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <div class="col-5">
                            <label class="sr-only" for="inlineFormInputGroup">Id</label>
                            <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                <div class="input-group-text">Id</div>
                              </div>
                              <input type="text" class="form-control" id="inlineFormInputGroup" disabled="disabled" placeholder="3524651">
                            </div>
                          </div>
                          <br>
                        <div class="img-profile-d">
                            <img src="${pageContext.request.contextPath}/assets/imgs/profile.svg" alt="">
                        </div>
                        <button class="btn-d3" type="submit" class="btn btn-primary">GUARDAR</button>
                    </div>

                </div>
            </div>

        </div>

        <jsp:include page="/pages/canvas/footer.jsp" />







