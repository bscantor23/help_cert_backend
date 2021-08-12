<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
	<div class="row">
		<div class="col-3 aside-menu">
			<jsp:include page="/pages/dashboards/components/admin_panel.jsp" />
		</div>
		<div class="col-9 principal-content px-5">
			<jsp:include page="/pages/canvas/breadcrumb.jsp" />
			<div class="pt-2">
				<div class="row justify-content-center align-items-center">
					<jsp:include page="/pages/canvas/search.jsp" />
					<div class="col-md-2 offset-md-1">
						<div class="input-group">
							<button class="btn-d2 p-2 shadow">CREAR</button>
						</div>
					</div>
				</div>
			</div>
      <div class="table-m mt-3 pr-3 custom-scroll">
        <table class="table">
          <thead class="thead-dark">
            <tr class="text-center">
              <th scope="col">ID</th>
              <th scope="col">Tipo_Doc</th>
              <th scope="col">Documento</th>
              <th scope="col">Apellidos</th>
              <th scope="col">Nombres</th>
              <th scope="col">Jornada</th>
              <th scope="col">Estado</th>
              <th scope="col"><i class="fas text-white fa-eye icons-standar"></i></th>
              <th scope="col"><i class="fas text-white fa-marker"></i></th></th>
              <th scope="col"><i class="fas text-white fa-check-circle"></i></th></th>
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
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td>
            </tr>
            <tr>
              <td>00058</td>
              <td>TI</td>
              <td>1015652738</td>
              <td>Diaz Hernandez</td>
              <td>Andrea Maria</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td> </tr>
            <tr>
              <td>00059</td>
              <td>CC</td>
              <td>1026485738</td>
              <td>Mantinez Ramirez</td>
              <td>Juan Diego</td>
              <td>Mixto</td>
              <td>Inactivo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td>  </tr>
            <tr>
              <td>00060</td>
              <td>CC</td>
              <td>145681234</td>
              <td>Garcia Gomez</td>
              <td>Daniel Camilo</td>
              <td>Diurno</td>
              <td>Inactivo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td>  </tr>
            <tr>
              <td>00061</td>
              <td>CC</td>
              <td>145416544</td>
              <td>Lopez Cantor</td>
              <td>Edwind Angel</td>
              <td>Nocturno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td>  </tr>
            <tr>
              <td>00062</td>
              <td>CC</td>
              <td>101065465</td>
              <td>Poveda Beltran</td>
              <td>Nicolle Valentina</td>
              <td>Nocturno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td>  </tr>
            <tr>
              <td>00063</td>
              <td>CC</td>
              <td>145624654</td>
              <td>Zapata Muñoz</td>
              <td>Nicolle Valentina</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td> </tr>
            <tr>
              <td>00064</td>
              <td>CC</td>
              <td>166459845</td>
              <td>Sánchez Alarcon</td>
              <td>Nicolle Valentina</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td> </tr>
            <tr>
              <td>00065</td>
              <td>TI</td>
              <td>164823654</td>
              <td>Rodriguez Ovalle</td>
              <td>Daniel Camilo</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td></tr>
            <tr>
              <td>00066</td>
              <td>CC</td>
              <td>1456278457</td>
              <td>Barbosa Ahumada</td>
              <td>@Andres Sebastian</td>
              <td>Diurno</td>
              <td>Activo</td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-eye"></i
              ></a></td> 
              <td>	<a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-marker"></i
              ></a></td>
              <td><a class="icono-m-d d-flex justify-content-center align-items-center mx-1" href=""
                ><i class="fas text-white fa-trash-alt"></i
              ></a></td></tr>
          </tbody>
        </table>
      </div>
		</div>
		<jsp:include page="/pages/canvas/footer.jsp" />
	</div>
</div>
