<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="/pages/dashboards/components/team_panel.jsp" />
        </div>
        <div class="col-9 principal-content pl-5">
            <h5 class="text-brown-muted">Contratos -> Información contrato</h5>
            <hr class="w-50">
            <br>
            <div class="container-info-m">
                <div class="row">
                    <div class="col-md-9 profile-content-m">
                        <form class="profile-content-form-m">
                            <div class="row">
                                <div class="col-auto">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Tipo Doc</div>
                                    <select id="tipo-doc-m" class="form-control">
                                        <option>CC</option>
                                        <option>TI</option>
                                        <option>CE</option>
                                    </select>
                                </div>
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="form-control" placeholder="Numero Doc">
                                </div>
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Fecha Inicio</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Fecha Inicio</div>
                                      </div>
                                      <input type="date" class="form-control" id="inlineFormInputGroup"  placeholder="">
                                    </div>
                                  </div>
                                  <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Fecha Fin</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Fecha Fin</div>
                                      </div>
                                      <input type="date" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Contrato Labor</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Contrato Labor</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup"  placeholder="">
                                    </div>
                                  </div>
                                  <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Salario</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Salario</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-auto">
                                    <label class="sr-only" for="inlineFormInputGroup">Num Otro Si</label>
                                    <div class="input-group mb-2">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text">Num Otro Si</div>
                                      </div>
                                      <input type="text" class="form-control" id="inlineFormInputGroup"  placeholder="">
                                    </div>
                                  </div>
                            </div>
                            <hr>
                            <div>
                                <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Objeto Contrato" rows="13"></textarea>
                            </div>
                            <hr>
                            <div>
                                <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Obligaciones Especificas" rows="13"></textarea>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-6">
                                    <div class="input-group ">
                                      <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Funciones Especificas" rows="13"></textarea>
                                    </div>
                                  </div>
                                  <div class="col-6">
                                    <div class="input-group ">
                                      <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Motivo Estado" rows="13"></textarea>
                                    </div>
                                  </div>
                            </div>                            
                        </form>
                    </div>
                    <div class="col-md-3">
                      <div class="container">
                        <div class="row mb-4 ">
                          <div class="col-md-8">
                            <label class="sr-only" for="inlineFormInputGroup">Id</label>
                            <div class="input-group mb-2">
                              <div class="input-group-prepend">
                                <div class="input-group-text">Id</div>
                              </div>
                              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="3524651">
                            </div>
                            <div class="volver-m">
                            <a  href="" class="btn btn-default circle my-2" style="border-radius: 50%"><span class="fas text-white fas fa-chevron-left"></span></a>
                        </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="/pages/canvas/footer.jsp" />







