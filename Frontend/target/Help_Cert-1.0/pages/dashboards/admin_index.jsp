<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <jsp:include page="/pages/canvas/header.jsp" />
    <jsp:include page="/pages/canvas/nav.jsp" />

    <div class="container-fluid content-container bg-white">
        <div class="row">
            <div class="col-3 aside-menu">
                <jsp:include page="components/admin_panel.jsp" />
            </div>
            <jsp:include page="components/info_1.jsp" />
        </div>
    </div>

    <jsp:include page="/pages/canvas/footer.jsp" />