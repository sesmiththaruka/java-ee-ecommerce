/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-10-02 09:53:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- munchbox/register.html  05 Dec 2019 10:25:15 GMT -->\r\n");
      out.write("<head>\r\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\r\n");
      out.write("  <meta name=\"keywords\" content=\"#\">\r\n");
      out.write("  <meta name=\"description\" content=\"#\">\r\n");
      out.write("  <title>Munchbox | Register</title>\r\n");
      out.write("  <!-- Fav and touch icons -->\r\n");
      out.write("  <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"#\">\r\n");
      out.write("  <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"#\">\r\n");
      out.write("  <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"#\">\r\n");
      out.write("  <link rel=\"apple-touch-icon-precomposed\" href=\"#\">\r\n");
      out.write("  <link rel=\"shortcut icon\" href=\"#\">\r\n");
      out.write("  <!-- Bootstrap -->\r\n");
      out.write("  <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Fontawesome -->\r\n");
      out.write("  <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Flaticons -->\r\n");
      out.write("  <link href=\"assets/css/font/flaticon.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Swiper Slider -->\r\n");
      out.write("  <link href=\"assets/css/swiper.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Range Slider -->\r\n");
      out.write("  <link href=\"assets/css/ion.rangeSlider.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- magnific popup -->\r\n");
      out.write("  <link href=\"assets/css/magnific-popup.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Nice Select -->\r\n");
      out.write("  <link href=\"assets/css/nice-select.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Custom Stylesheet -->\r\n");
      out.write("  <link href=\"assets/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Custom Responsive -->\r\n");
      out.write("  <link href=\"assets/css/responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;display=swap\" rel=\"stylesheet\">\r\n");
      out.write("  <!-- place -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"inner-wrapper\">\r\n");
      out.write("  <div class=\"container-fluid no-padding\">\r\n");
      out.write("    <div class=\"row no-gutters overflow-auto\">\r\n");
      out.write("      <div class=\"col-md-6\">\r\n");
      out.write("        <div class=\"main-banner\">\r\n");
      out.write("          <img src=\"assets/img/banner/banner-1.jpg\" class=\"img-fluid full-width main-img\" alt=\"banner\">\r\n");
      out.write("          <div class=\"overlay-2 main-padding\">\r\n");
      out.write("            <img src=\"assets/img/logo-2.jpg\" class=\"img-fluid\" alt=\"logo\">\r\n");
      out.write("          </div>\r\n");
      out.write("          <img src=\"assets/img/banner/burger.png\" class=\"footer-img\" alt=\"footer-img\">\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"col-md-6\">\r\n");
      out.write("        <div class=\"section-2 user-page main-padding\">\r\n");
      out.write("          <div class=\"login-sec\">\r\n");
      out.write("            <div class=\"login-box\">\r\n");
      out.write("\r\n");
      out.write("                <h4 class=\"text-light-black fw-600\">Create your account</h4>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                  <div class=\"col-lg-6 col-md-12 col-sm-6\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label class=\"text-light-white fs-14\">First name</label>\r\n");
      out.write("                      <input type=\"text\" id=\"fname\"  class=\"form-control form-control-submit\" placeholder=\"First Name\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-lg-6 col-md-12 col-sm-6\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label class=\"text-light-white fs-14\">Last name</label>\r\n");
      out.write("                      <input type=\"text\" id=\"lname\" class=\"form-control form-control-submit\" placeholder=\"Last Name\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-12\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label class=\"text-light-white fs-14\">Email</label>\r\n");
      out.write("                      <input type=\"email\" name=\"#\" id=\"email\" class=\"form-control form-control-submit\" placeholder=\"Email I'd\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <label class=\"text-light-white fs-14\">Password (8 character minimum)</label>\r\n");
      out.write("                      <input type=\"password\" id=\"password\" name=\"#\" class=\"form-control form-control-submit\"  placeholder=\"Password\" required>\r\n");
      out.write("                      <div data-name=\"#password-field\" class=\"fa fa-fw fa-eye field-icon toggle-password\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group checkbox-reset\">\r\n");
      out.write("                      <label class=\"custom-checkbox mb-0\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"#\"> <span class=\"checkmark\"></span> Keep me signed in</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <button class=\"btn-second btn-submit full-width sign-up\">Create your account</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group text-center\"> <span>or</span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <button type=\"submit\" class=\"btn-second btn-facebook full-width\">\r\n");
      out.write("                        <img src=\"assets/img/facebook-logo.svg\" alt=\"btn logo\">Continue with Facebook</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                      <button type=\"submit\" class=\"btn-second btn-google full-width\">\r\n");
      out.write("                        <img src=\"assets/img/google-logo.png\" alt=\"btn logo\">Continue with Google</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group text-center\">\r\n");
      out.write("                      <p class=\"text-light-black mb-0\">Have an account? <a href=\"./login\">Sign in</a>\r\n");
      out.write("                      </p>\r\n");
      out.write("                    </div> <span class=\"text-light-black fs-12 terms\">By creating your Munchbox account, you agree to the <a href=\"#\"> Terms of Use </a> and <a href=\"#\"> Privacy Policy.</a></span>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- Place all Scripts Here -->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("  let e = document.getElementsByClassName('sign-up').item(0).addEventListener('click',function (){\r\n");
      out.write("    let firstName = document.getElementById('fname').value;\r\n");
      out.write("    let lastName = document.getElementById('lname').value;\r\n");
      out.write("    let email = document.getElementById('email').value;\r\n");
      out.write("    let password = document.getElementById('password').value;\r\n");
      out.write("\r\n");
      out.write("    console.log(firstName);\r\n");
      out.write("    console.log(lastName);\r\n");
      out.write("    console.log(email);\r\n");
      out.write("    console.log(password);\r\n");
      out.write("\r\n");
      out.write("    fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("register',{\r\n");
      out.write("      method:'post',\r\n");
      out.write("      headers:{\r\n");
      out.write("        'Content-Type': 'application/json'\r\n");
      out.write("      },\r\n");
      out.write("      body: JSON.stringify({\r\n");
      out.write("        firstName:firstName,\r\n");
      out.write("        lastName:lastName,\r\n");
      out.write("        email:email,\r\n");
      out.write("        password:password\r\n");
      out.write("      })\r\n");
      out.write("    }).then(response => response.text())\r\n");
      out.write("            .then(\r\n");
      out.write("\r\n");
      out.write("                    text => {\r\n");
      out.write("                      if(text==\"email already exists\"){\r\n");
      out.write("                        alert(text);\r\n");
      out.write("                      }else if (text==\"Register success\"){\r\n");
      out.write("                        alert(text)\r\n");
      out.write("                        window.location = \"./\"\r\n");
      out.write("                      }\r\n");
      out.write("                    })\r\n");
      out.write("\r\n");
      out.write("  }\r\n");
      out.write("  );\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<!-- jQuery -->\r\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\r\n");
      out.write("<!-- Popper -->\r\n");
      out.write("<script src=\"assets/js/popper.min.js\"></script>\r\n");
      out.write("<!-- Bootstrap -->\r\n");
      out.write("<script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("<!-- Range Slider -->\r\n");
      out.write("<script src=\"assets/js/ion.rangeSlider.min.js\"></script>\r\n");
      out.write("<!-- Swiper Slider -->\r\n");
      out.write("<script src=\"assets/js/swiper.min.js\"></script>\r\n");
      out.write("<!-- Nice Select -->\r\n");
      out.write("<script src=\"assets/js/jquery.nice-select.min.js\"></script>\r\n");
      out.write("<!-- magnific popup -->\r\n");
      out.write("<script src=\"assets/js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("<!-- Maps -->\r\n");
      out.write("<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyDnd9JwZvXty-1gHZihMoFhJtCXmHfeRQg\"></script>\r\n");
      out.write("<!-- sticky sidebar -->\r\n");
      out.write("<script src=\"assets/js/sticksy.js\"></script>\r\n");
      out.write("<!-- Munch Box Js -->\r\n");
      out.write("<script src=\"assets/js/munchbox.js\"></script>\r\n");
      out.write("<!-- /Place all Scripts Here -->\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- munchbox/register.html  05 Dec 2019 10:25:15 GMT -->\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
