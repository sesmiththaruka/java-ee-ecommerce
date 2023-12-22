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
                <h2 class="tm-block-title d-inline-block">Add category</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">

                <div class="form-group mb-3">
                  <label for="name">category Name </label>
                  <input id="name" name="name" type="text" class="form-control validate"  required />
                </div>





              </div>

              </div>
              <div class="col-12">
                <button onclick="addcategory()" class="btn btn-primary btn-block text-uppercase">Add Product Now
                </button>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      function addcategory(){
        alert("okd")
        var name = document.getElementById("name").value;
        alert(name);
        fetch('${BASE_URL}adminpanel/addcategoryprocess',{
          method:'post',
          headers:{
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            name:name
          })
        }).then(response => response.text())
                .then(

                        text => {
                          alert(text);
                          if(text=="Register success.."){
                            alert(text);
                            window.location = "${BASE_URL}adminpanel/product"
                          }else if (text=="Register success"){
                            alert(text)
                            window.location = "./"
                          }
                        })
      }
    </script>
  </layout:put>
</layout:extends>
