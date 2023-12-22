<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="lk.verdana.ecom.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="lk.verdana.ecom.entity.Product" %>
<%@ page import="lk.verdana.ecom.entity.Category" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Tharuka
  Date: 10/2/2023
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Edit Product - Dashboard Admin Template</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${BASE_URL}/admin-assets/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>
<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session openSession = sessionFactory.openSession();



//    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
//    pageContext.setAttribute("category", category);
    String productIds = (String) request.getAttribute("productId");
    int productId = Integer.parseInt(productIds);



    Product product = openSession.createQuery("SELECT product FROM Product product WHERE product.id = :productId", Product.class)
            .setParameter("productId", productId)
            .uniqueResult();
    pageContext.setAttribute("product", product);

    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
    pageContext.setAttribute("category", category);

%>
<body>
<nav class="navbar navbar-expand-xl">
    <div class="container h-100">
        <a class="navbar-brand" href="index.html">
            <h1 class="tm-site-title mb-0">Product Admin</h1>
        </a>
        <button
                class="navbar-toggler ml-auto mr-0"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-tachometer-alt"></i> Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        <i class="far fa-file-alt"></i>
                        <span> Reports <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Daily Report</a>
                        <a class="dropdown-item" href="#">Weekly Report</a>
                        <a class="dropdown-item" href="#">Yearly Report</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="products.html">
                        <i class="fas fa-shopping-cart"></i> Products
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="accounts.html">
                        <i class="far fa-user"></i> Accounts
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        <i class="fas fa-cog"></i>
                        <span> Settings <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Profile</a>
                        <a class="dropdown-item" href="#">Billing</a>
                        <a class="dropdown-item" href="#">Customize</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link d-block" href="login.html">
                        Admin, <b>Logout</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Edit Product</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="form-group mb-3">
                            <label
                                    for="id"
                            >Product id
                            </label>
                            <input
                                    id="id"
                                    name="id"
                                    type="text"
                                    disabled
                                    value="${product.id}"
                                    class="form-control validate"
                            />
                        </div>
                            <div class="form-group mb-3">
                                <label
                                        for="name"
                                >Product Name
                                </label>
                                <input
                                        id="name"
                                        name="name"
                                        type="text"
                                        value="${product.name}"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="description"
                                >Description</label
                                >
                                <textarea
                                        class="form-control validate tm-small"
                                        rows="5"
                                        id="description"
                                        required

                                >${product.description}</textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="category"
                                >Category</label
                                >
                                <select id="category"
                                        class="custom-select tm-select-accounts"

                                >
                                    <option value="1" selected>${product.category.name}</option>

                                    <c:forEach var="category" items="${category}">
                                        <option value="${category.id}">${category.name}</option>

                                    </c:forEach>
                                </select>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >price
                                    </label>
                                    <input
                                            id="price"

                                            type="text"
                                            value="${product.price}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>

                            </div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                        <div class="tm-product-img-edit mx-auto">
                            <img src="img/product-image.jpg" alt="Product image" class="img-fluid d-block mx-auto">
                            <i
                                    class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('fileInput').click();"
                            ></i>
                        </div>
                        <div class="custom-file mt-3 mb-3">
                            <input id="fileInput" type="file" style="display:none;" />
                            <input
                                    type="button"
                                    class="btn btn-primary btn-block mx-auto"
                                    value="CHANGE IMAGE NOW"
                                    onclick="document.getElementById('fileInput').click();"
                            />
                        </div>
                    </div>
                    <div class="col-12">
                        <button onclick="updateProduct()" class="btn btn-primary btn-block text-uppercase">Update Now</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
    </div>
</footer>

<script src="${BASE_URL}/admin-assets/js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="${BASE_URL}/admin-assets/jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="${BASE_URL}/admin-assets/js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>

    function updateProduct(){
        let id = document.getElementById("id").value;
        let name = document.getElementById("name").value;
        let price = document.getElementById("price").value;
        let description = document.getElementById("description").value;
        let category = document.getElementById("category").value;
        alert(id)
        <%--alert(name)--%>
        <%--alert(price)--%>
        <%--alert(description)--%>
        <%--alert(category)--%>
        <%--alert(${BASE_URL})--%>
        fetch('${BASE_URL}adminpanel/updateproductprocess',{
            method:'post',
            headers:{
                'Content-Type': 'application/json'
            },
            body:JSON.stringify({
                id:id,
                name:name,
                price:price,
                description:description,
                category:category
            })
        }).then(response => {
            if (response.ok) {
                alert("saved");
                window.location = BASE_URL+"adminpanel"
                return response.json();
            } else {
                throw new Error('Request failed with status: ' + response.status);
            }
        })
            .then(text => console.log(text));
    }


</script>
</body>
</html>
