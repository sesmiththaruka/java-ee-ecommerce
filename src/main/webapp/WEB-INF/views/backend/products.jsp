<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="lk.verdana.ecom.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="lk.verdana.ecom.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.verdana.ecom.entity.Category" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session openSession = sessionFactory.openSession();





    List<Product> products = openSession.createQuery("SELECT product FROM Product product", Product.class)
            .getResultList();

    pageContext.setAttribute("products", products);

    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
    pageContext.setAttribute("category", category);
%>
<layout:extends name="adminbase">
    <layout:put block="adminContent" type="REPLACE">
        <div class="container mt-5">
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-products">
                        <div class="tm-product-table-container">
                            <table class="table table-hover tm-table-small tm-product-table">
                                <thead>
                                <tr>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">PRODUCT NAME</th>
                                    <th scope="col">price</th>
                                    <th scope="col">un id</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="products" items="${products}">
                                    <tr onclick="editProduct(${products.id})">
                                        <th scope="row"><input type="checkbox" /></th>
                                        <td class="tm-product-name">${products.name}</td>
                                        <td>${products.price}</td>
                                        <td>fv</td>
                                        <td>${products.description}</td>
                                        <td>
                                            <a onclick="deleteSelectProduct(${products.id})" href="#" class="tm-product-delete-link">
                                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>



                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <a
                                href="${BASE_URL}adminpanel/addproduct"
                                class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>

                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                        <h2 class="tm-block-title">Product Categories</h2>
                        <div class="tm-product-table-container">
                            <table class="table tm-table-small tm-product-table">
                                <tbody>
                                <c:forEach var="category" items="${category}">
                                    <tr>
                                        <td class="tm-product-name">${category.name}</td>
                                        <td class="text-center">
                                            <a onclick="deleteProduct(${category.id})" class="tm-product-delete-link">
                                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>



                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <a
                                href="${BASE_URL}adminpanel/addcategory"
                                class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function deleteProduct(id){
                alert(id)
                fetch('${BASE_URL}adminpanel/deletproductprocess',{
                    method:'post',
                    headers:{
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        id:id
                    })
                }).then(response => response.text())
                    .then(

                        text => {
                            alert(text);
                            if(text=="deleted"){
                                alert(text);
                                window.location = "${BASE_URL}adminpanel/product"
                            }else if (text=="Register success"){
                                alert(text)
                                window.location = "./"
                            }
                        })


            }

            function deleteSelectProduct(id){
                alert(id)
                fetch('${BASE_URL}adminpanel/deletselectproductprocess',{
                    method:'post',
                    headers:{
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        id:id
                    })
                }).then(response => response.text())
                    .then(

                        text => {
                            alert(text);
                            if(text=="deleted"){
                                alert(text);
                                window.location = "${BASE_URL}adminpanel/product"
                            }else if (text=="Register success"){
                                alert(text)
                                window.location = "./"
                            }
                        })


            }


            function editProduct(id){
                var singleProductUrl = BASE_URL+'adminpanel/editproduct/'+id;
                window.location.href = singleProductUrl;
            }
        </script>
    </layout:put>
</layout:extends>