<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <body>
        <nav class="navbar navbar-expand bg-white max-height-box shadow-box p-0">
            <div class="navbar-header principal-menu shadow-box">
                <div class="navbar-brand" href="#">
                    <button id="button-menu" class="ml-3 button-menu-cert">
                  <img class="ml-1 menu-icon" src="${pageContext.request.contextPath}/assets/icons/menu-icon.png" alt="menu_icon_image">
              </button>
                    <h4 class="text-brown font-weight-bold float-right ml-3 mt-2">Rol Usuario</h4>
                </div>
            </div>
            <div class="bg-orange principal-nav">
                <img class="transition-icon" src="${pageContext.request.contextPath}/assets/icons/transition-icon.png" alt="transition_icon_image">
                <ul class="navbar-nav items-principal-nav-container mr-1">
                    <li class="nav-item item-principal-nav">
                        <a class="notifications-item" href="${pageContext.request.contextPath}/my-home/dashboard">
                            <img class="menu-icon mr-3" src="${pageContext.request.contextPath}/assets/icons/notifications-icon.png" alt="notifications_icon_image">
                        </a>
                        <hr class="vertical-line">
                    </li>
                    <li class="nav-item item-principal-nav">
                        <a class="perfil-item" href="${pageContext.request.contextPath}/my-home/profile?p=info">
                            <i class="bx bxs-user-circle mx-2 d-inline-block fotoPerfil" aria-hidden="true"></i>
                            <h6 class="float-right mx-2 pt-2 text-white font-weight-bold">Brayan Steban Cantor Munevar</h6>
                        </a>
                    </li>
                    <li class="nav-item item-principal-nav">
                        <hr class="vertical-line">
                        <div class="container-options-item">
                            <button class="options-item" id="options-button">
                         <i class='bx bxs-layer settings-icon text-brown' id="options-icon"></i>
                      </button>
                        </div>
                    </li>
                </ul>
                <div id="options" class="options-container bg-white">
                    <div class="item-component-options">
                        <i class="bx bxs-user-account icon-options-menu ml-2" aria-hidden="true"></i>
                        <a class="text-component-options" href="${pageContext.request.contextPath}/my-home/profile?p=update">
                            <p class="text-muted mt-3 item-link-aside">Actualizar Información</p>
                            <hr class="m-0 mb-2">
                        </a>
                    </div>
                    <div class="item-component-options">
                        <i class="bx bxs-lock-open icon-options-menu ml-2" aria-hidden="true"></i>
                        <a class="text-component-options" href="${pageContext.request.contextPath}/my-home/profile?p=credentials">
                            <p class="text-muted mt-3 item-link-aside">Cambio Contraseña</p>
                            <hr class="m-0 mb-2">
                        </a>
                    </div>
                    <div class="item-component-options">
                        <i class="bx bxs-exit icon-options-menu ml-2" aria-hidden="true"></i>
                        <a class="text-component-options" href="${pageContext.request.contextPath}/">
                            <p class="text-muted mt-3 item-link-aside">Cerrar Sesión</p>
                            <hr class="m-0 mb-2">
                        </a>
                    </div>
                </div>
            </div>
        </nav>