<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-dark navbar-expand-md bg-primary-color px-2" role="navigation">
    <div class="container-fluid">
        <a class="navbar-brand mx-2" href="${pageContext.request.contextPath}/"><img class="navbar-img" src="${pageContext.request.contextPath}/assets/logos/sena-logo.png" alt="logo_sena_image"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Dropdown" aria-controls="Dropdown" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="Dropdown">
            <ul class="navbar-nav pl-3 w-100 d-flex justify-content-end">
                <hr class="line-style-1">
                <li class="nav-item px-3 py-2">
                    <a class="nav-link h5 m-0" aria-current="page" href="${pageContext.request.contextPath}/home?p=signin"><i class="fas fa-hotel mx-lg-2  sp-1 text-center"></i>INICIO</a>
                </li>
                <li class="nav-item px-3 py-2">
                    <a class="nav-link h5 m-0" href="${pageContext.request.contextPath}/home?p=about"><i class="fas fa-hand-point-up mx-lg-2 sp-1 text-center"></i>ACERCA DE</a>
                </li>
                <li class="nav-item px-3 py-2 ">
                    <a class="nav-link h5 m-0" href="${pageContext.request.contextPath}/home?p=services"><i class="fas fa-cog mx-lg-2  sp-1 text-center"></i>SERVICIOS</a>
                </li>
                <li class="nav-item px-3 py-2">
                    <a class="nav-link h5 m-0" href="${pageContext.request.contextPath}/home?p=contact"><i class="fas fa-id-card-alt  mx-lg-2 sp-1 text-center"></i>CONTACTO</a>
                </li>
            </ul>
        </div>
    </div>
</nav>