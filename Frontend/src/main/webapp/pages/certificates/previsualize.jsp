<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="/pages/canvas/header.jsp" />
<jsp:include page="/pages/canvas/nav.jsp" />

<div class="container-fluid content-container bg-white">
	<div class="row">
		<div class="col-3 aside-menu">
			<jsp:include page="/pages/dashboards/components/functionary_panel.jsp" />
		</div>
		<div class="col-9 principal-content px-5 pb-5">
			<jsp:include page="/pages/canvas/pdf.jsp" />
		</div>
	</div>
	<jsp:include page="/pages/canvas/footer.jsp" />
</div>
