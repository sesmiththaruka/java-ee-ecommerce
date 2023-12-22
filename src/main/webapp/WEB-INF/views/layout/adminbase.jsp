
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Admin - Dashboard HTML Template</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body id="reportsPage">
<div class="" id="home">
<%--    navbar--%>
    <jsp:include page="../backend/include/header.jsp"/>

<%--    navbar--%>

<%--   load admin dash content--%>
    <layout:block name="adminContent"></layout:block>

    <%--  load  admin dash content--%>

<%--    footer--%>
    <jsp:include page="../backend/include/footer.jsp"/>

    <%--    footer--%>
</div>
<script src="${BASE_URL}/admin-assets/js/custom.js"></script>
<script src="${BASE_URL}/admin-assets/js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="${BASE_URL}/admin-assets/js/moment.min.js"></script>
<!-- https://momentjs.com/ -->
<script src="${BASE_URL}/admin-assets/js/Chart.min.js"></script>
<!-- http://www.chartjs.org/docs/latest/ -->
<script src="${BASE_URL}/admin-assets/js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script src="${BASE_URL}/admin-assets/js/tooplate-scripts.js"></script>
<script>
    const BASE_URL = ${BASE_URL}
    Chart.defaults.global.defaultFontColor = 'white';
    let ctxLine,
        ctxBar,
        ctxPie,
        optionsLine,
        optionsBar,
        optionsPie,
        configLine,
        configBar,
        configPie,
        lineChart;
    barChart, pieChart;
    // DOM is ready
    $(function () {
        drawLineChart(); // Line Chart
        drawBarChart(); // Bar Chart
        drawPieChart(); // Pie Chart

        $(window).resize(function () {
            updateLineChart();
            updateBarChart();
        });
    })
</script>
</body>

</html>
