<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <jsp:include page="/pages/homepages/components/header.jsp" />

    <body class="res-body">
        <div class="decorate-space"></div>
        <div class="container-fluid content-container-404 d-flex flex-column align-items-center align-content-center justify-content-center">
            <img src="${pageContext.request.contextPath}/assets/others/notFound.png" class="img-fluid" alt="not_found_image">
            <h1 class="primary-color">Page not Found!</h1>
            <hr class="line-style-org">
            <h4 class="mt-4 w-25 text-center lh-base secondary-color">Lo sentimos, la página que solicitas no ha sido encontrada.</h4>
            <a id="redirect-back" class="button-style-1 py-3 px-5 mt-5"><i class='bx bx-revision'></i> Regresar</a>
        </div>
        <div class="decorate-space fixed-bottom"></div>
        <script>
            const href = document.getElementById("redirect-back");
            href.addEventListener("click", function() {
                window.history.back();
            }, false);
        </script>
    </body>

    </html>