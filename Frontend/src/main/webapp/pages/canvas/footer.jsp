<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
    String methodAtt = (String) request.getAttribute("method");
    String methodParam = (String) request.getParameter("method");

    if (methodAtt != null || methodParam != null) {
%>
        <jsp:include page="/pages/alerts/alerts.jsp" />
        <% }%>

            <footer class="container-fluid footer-container">
                <img class="icon-footer" src="${pageContext.request.contextPath}/assets/icons/icon-footer.png" alt="icon_footer_image">
                <h2 class="text-white mt-4">HELP CERT</h2>
                <hr class="hr-footer">
                <p class="text-white mt-2">© Copyright 2020 - Todos los Derechos Reservados</p>
            </footer>
            <script src="${pageContext.request.contextPath}/js/dashboard.js"></script>
            <script src="${pageContext.request.contextPath}/vendor/alerts/alerts.js"></script>
            

            </body>

            </html>