<%@ page import="lk.verdana.ecom.util.HibernateUtil" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="lk.verdana.ecom.entity.Category" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session openSession = sessionFactory.openSession();

    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
    pageContext.setAttribute("category", category);
%>
<layout:extends name="adminbase">
    <layout:put block="adminContent" type="REPLACE">

        <div class="container tm-mt-big tm-mb-big">
            <div class="row">
                <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                    <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="tm-block-title d-inline-block">Add Product</h2>
                            </div>
                        </div>
                        <div class="row tm-edit-product-row">
                            <div class="col-xl-6 col-lg-6 col-md-12">

                                    <div class="form-group mb-3">
                                        <label for="name">Product Name </label>
                                        <input id="name" name="name" type="text" class="form-control validate"  required />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="price">Product Price </label>
                                        <input id="price" name="price" type="text" class="form-control validate"  required />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="description" >Description</label>
                                        <textarea id="description" class="form-control validate" rows="3" required></textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="category">Category</label>
                                        <select class="custom-select tm-select-accounts" id="category">
                                            <c:forEach var="category" items="${category}">
                                                <option value="${category.id}">${category.name}</option>

                                            </c:forEach>
                                        </select>
                                    </div>


                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                <div class="tm-product-img-dummy mx-auto">
                                    <i
                                            class="fas fa-cloud-upload-alt tm-upload-icon"
                                            onclick="document.getElementById('fileInput').click();"
                                    ></i>
                                </div>
                                <div class="custom-file mt-3 mb-3">
                                    <input id="fileInput" type="file" style="display:none;"/>
                                    <input
                                            type="button"
                                            class="btn btn-primary btn-block mx-auto"
                                            value="UPLOAD PRODUCT IMAGE"
                                            onclick="document.getElementById('fileInput').click();"
                                    />
                                </div>
                            </div>
                            <div class="col-12">
                                <button onclick="addproduct()" class="btn btn-primary btn-block text-uppercase">Add Product Now
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </layout:put>
</layout:extends>
