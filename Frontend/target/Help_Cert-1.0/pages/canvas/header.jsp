<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Help_Cert</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/logos/HC.png" type="image/x-icon" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
		<link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-d.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-m.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/alerts/alerts.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/fontawesome/css/all.min.css" />
		<script src="${pageContext.request.contextPath}/vendor/fontawesome/js/all.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
	</head>

	<%if ((session.getAttribute("user") == null)) { response.sendRedirect("page"); }%>
</html>
