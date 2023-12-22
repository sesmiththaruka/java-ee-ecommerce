<%--
  Created by IntelliJ IDEA.
  User: Tharuka
  Date: 9/24/2023
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">


<!-- munchbox/login.html  05 Dec 2019 10:25:12 GMT -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="keywords" content="#">
  <meta name="description" content="#">
  <title>Munchbox | Login</title>
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

<body>
<div class="inner-wrapper">
  <div class="container-fluid no-padding">
    <div class="row no-gutters overflow-auto">
      <div class="col-md-6">
        <div class="main-banner">
          <img src="assets/img/banner/banner-1.jpg" class="img-fluid full-width main-img" alt="banner">
          <div class="overlay-2 main-padding">
            <img src="assets/img/refresh_logo.png" class="img-fluid" alt="logo">
          </div>
          <img src="assets/img/banner/burger.png" class="footer-img" alt="footer-img">
        </div>
      </div>
      <div class="col-md-6">
        <div class="section-2 user-page main-padding">
          <div class="login-sec">
            <div class="login-box">
              <form>
                <h4 class="text-light-black fw-600">Sign in with your Munchbox account</h4>
                <div class="row">
                  <div class="col-12">
                    <p class="text-light-black">Have a corporate username? <a href="add-restaurant.html">Click here</a>
                    </p>
                    <div class="form-group">
                      <label class="text-light-white fs-14">Email</label>
                      <input type="email"  class="form-control form-control-submit" placeholder="Email" id="email" required>
                    </div>
                    <div class="form-group">
                      <label class="text-light-white fs-14">Password</label>
                      <input type="password" class="form-control form-control-submit" id="password" placeholder="Password" required>
                      <div data-name="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></div>
                    </div>
                    <div class="form-group checkbox-reset">
                      <label class="custom-checkbox mb-0">
                        <input type="checkbox" name="#"> <span class="checkmark"></span> Keep me signed in</label> <a href="#">Reset password</a>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="signIn btn-second btn-submit full-width">
                        <img src="assets/img/M.png" alt="btn logo">Sign in</button>
                    </div>
                    <div class="form-group text-center"> <span>or</span>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn-second btn-facebook full-width">
                        <img src="assets/img/facebook-logo.svg" alt="btn logo">Continue with Facebook</button>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn-second btn-google full-width">
                        <img src="assets/img/google-logo.png" alt="btn logo">Continue with Google</button>
                    </div>
                    <div class="form-group text-center mb-0"> <a href="./register">Create your account</a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Place all Scripts Here -->
<script type="text/javascript">
  let e = document.getElementsByClassName('signIn').item(0).addEventListener('click',function (){
    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;

    fetch('${BASE_URL}login',{
      method:'post',
      headers:{
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        email:email,
        password:password
      })
    }).then(response => {
      if (response.ok) {
        alert("ok");
window.location = "${BASE_URL}"
        return response.json();
      } else {
        throw new Error('Request failed with status: ' + response.status);
      }
    })
            .then(text => console.log(text));
  });


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


<!-- munchbox/login.html  05 Dec 2019 10:25:15 GMT -->
</html>