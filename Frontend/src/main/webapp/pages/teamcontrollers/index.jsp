<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
/>

<div class="container-fluid content-container bg-white">
  <div class="row">
    <div class="col-3 aside-menu">
      <jsp:include page="/pages/dashboards/components/admin_panel.jsp" />
    </div>
    <div class="col-md-9 mb-3">
      <h5 class="text-brown-muted mt-5">Team Controller -> Tabla de información</h5>
      <hr class="w-50">
      <div class="row mt-3">
        <div class="col-md-5">
          <div class="input-group">
            <div class="input-group-prepend">
              <button class="btn text-white btn-default " type="button"><i class="fas fa-search"></i>Buscar</button>
            </div>
            <input
              type="text"
              class="form-control"
              id="validationDefaultUsername"
              placeholder="Numero De Documento"
              aria-describedby="basic-addon1"
              required/>
          </div>
        </div>
        <div class="col-md-3">
          <div class="input-group">
            <input type="checkbox" id="activar" />
            <label for="activar">ACTIVO</label>
          </div>
        </div>
      </div>
      
     
      <div class="col-md-4 table-m">
        <table class="table mt-3  ">
          <thead class="thead-dark">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Tipo Doc</th>
              <th scope="col">Numero Doc</th>
              <th scope="col">Apellidos</th>
              <th scope="col">Nombres</th>
              <th scope="col">Jornada</th>
              <th scope="col">Estado</th>
              <th scope="col"><a href="" class="container-icon"><i class="fas text-white fa-eye icons-standar"></i></a></th>
              <th scope="col"><a href="" class="container-icon"><i class="fas text-white fa-marker"></i></a></th></th>
              <th scope="col"><a href="" class="container-icon"><i class="fas text-white fa-check-circle"></i></a></th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>00057</td>
              <td>CC</td>
              <td>1057852738</td>
              <td>Poveda Muñoz</td>
              <td>Anderson Felipe</td>
              <td>Nocturno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00058</td>
              <td>TI</td>
              <td>1015652738</td>
              <td>Diaz Hernandez</td>
              <td>Andrea Maria</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td> 
            </tr>
            <tr>
              <td>00059</td>
              <td>CC</td>
              <td>1026485738</td>
              <td>Mantinez Ramirez</td>
              <td>Juan Diego</td>
              <td>Mixto</td>
              <td>Inactivo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00060</td>
              <td>CC</td>
              <td>145681234</td>
              <td>Garcia Gomez</td>
              <td>Daniel Camilo</td>
              <td>Diurno</td>
              <td>Inactivo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00061</td>
              <td>CC</td>
              <td>145416544</td>
              <td>Lopez Cantor</td>
              <td>Edwind Angel</td>
              <td>Nocturno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00062</td>
              <td>CC</td>
              <td>101065465</td>
              <td>Poveda Beltran</td>
              <td>Nicolle Valentina</td>
              <td>Nocturno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00063</td>
              <td>CC</td>
              <td>145624654</td>
              <td>Zapata Muñoz</td>
              <td>Nicolle Valentina</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00064</td>
              <td>CC</td>
              <td>166459845</td>
              <td>Sánchez Alarcon</td>
              <td>Nicolle Valentina</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td> 
            </tr>
            <tr>
              <td>00065</td>
              <td>TI</td>
              <td>164823654</td>
              <td>Rodriguez Ovalle</td>
              <td>Daniel Camilo</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
            <tr>
              <td>00066</td>
              <td>CC</td>
              <td>1456278457</td>
              <td>Barbosa Ahumada</td>
              <td>@Andres Sebastian</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-eye icons-standar"></span></a></td> 
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-marker"></span></a></td>
              <td><a href="" class="btn btn-default circle" style="border-radius: 50%"><span class="fas text-white fa-check-circle"></span></a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="row mt-3">
        <div class="col-md-7">
          <button type="button" class="btn text-white btn-default">Crear Usuario</button>
        </div>
        <div class="col-md-5">
          <div >
            <a href="">Anterior</a>
            <a href="">1</a>
            <a class="text-black" href="">2</a>
            <a class="text-black" href="">3</a>
            <a class="text-black" href="">4 ......</a>
            <a class="text-black" href="">15</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<jsp:include page="/pages/canvas/footer.jsp" />

