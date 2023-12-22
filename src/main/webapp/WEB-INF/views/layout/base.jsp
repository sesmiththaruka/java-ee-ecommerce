
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">

<%--header--%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="#">
    <meta name="description" content="#">
    <title>Munchbox | Food Delivery Hub</title>
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="#">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="#">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="#">
    <link rel="apple-touch-icon-precomposed" href="#">
    <link rel="shortcut icon" href="#">
    <!-- Bootstrap -->
    <link href="${BASE_URL}assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fontawesome -->
    <link href="${BASE_URL}assets/css/font-awesome.css" rel="stylesheet">
    <!-- Flaticons -->
    <link href="${BASE_URL}assets/css/font/flaticon.css" rel="stylesheet">
    <!-- Swiper Slider -->
    <link href="${BASE_URL}assets/css/swiper.min.css" rel="stylesheet">
    <!-- Range Slider -->
    <link href="${BASE_URL}assets/css/ion.rangeSlider.min.css" rel="stylesheet">
    <!-- magnific popup -->
    <link href="${BASE_URL}assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Nice Select -->
    <link href="${BASE_URL}assets/css/nice-select.css" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="${BASE_URL}assets/css/style.css" rel="stylesheet">
    <!-- Custom Responsive -->
    <link href="${BASE_URL}assets/css/responsive.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;display=swap" rel="stylesheet">
    <!-- place -->
</head>
<%--header--%>

<body>

<%--header--%>
<jsp:include page="../frontend/include/header.jsp"/>
<%--header--%>


<%-- load content--%>
<layout:block name="content"></layout:block>
<%-- load content--%>




<!-- footer -->
<jsp:include page="../frontend/include/footer.jsp"/>
<!-- footer -->


<!-- modal boxes -->
<div class="modal fade" id="address-box">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title fw-700">Change Address</h4>
            </div>
            <div class="modal-body">
                <div class="location-picker">
                    <input type="text" class="form-control" placeholder="Enter a new address">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="search-box">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="search-box p-relative full-width">
                    <input type="text" class="form-control" placeholder="Pizza, Burger, Chinese">
                </div>
            </div>
            <div class="modal-body"></div>
        </div>
    </div>
</div>
<!-- Place all Scripts Here -->
<script>
    const BASE_URL = ${BASE_URL}
</script>

<script src="${BASE_URL}assets/js/custom.js"></script>
<!-- jQuery -->
<script src="${BASE_URL}assets/js/jquery.min.js"></script>
<!-- Popper -->
<script src="${BASE_URL}assets/js/popper.min.js"></script>
<!-- Bootstrap -->
<script src="${BASE_URL}assets/js/bootstrap.min.js"></script>
<!-- Range Slider -->
<script src="${BASE_URL}assets/js/ion.rangeSlider.min.js"></script>
<!-- Swiper Slider -->
<script src="${BASE_URL}assets/js/swiper.min.js"></script>
<!-- Nice Select -->
<script src="${BASE_URL}assets/js/jquery.nice-select.min.js"></script>
<!-- magnific popup -->
<script src="${BASE_URL}assets/js/jquery.magnific-popup.min.js"></script>
<!-- Maps -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnd9JwZvXty-1gHZihMoFhJtCXmHfeRQg"></script>
<!-- sticky sidebar -->
<script src="${BASE_URL}assets/js/sticksy.js"></script>
<!-- Munch Box Js -->
<script src="${BASE_URL}assets/js/munchbox.js"></script>
<!-- /Place all Scripts Here -->
</body>


</html>
