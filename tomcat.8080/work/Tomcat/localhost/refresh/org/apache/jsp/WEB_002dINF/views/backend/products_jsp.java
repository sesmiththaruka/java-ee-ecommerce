/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-10-03 05:04:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.backend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import org.hibernate.SessionFactory;
import lk.verdana.ecom.util.HibernateUtil;
import org.hibernate.Session;
import lk.verdana.ecom.entity.Product;
import java.util.List;
import lk.verdana.ecom.entity.Category;

public final class products_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("jar:file:/C:/Users/Tharuka/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar!/META-INF/jsp-inheritance.tld", Long.valueOf(1692219220000L));
    _jspx_dependants.put("file:/C:/Users/Tharuka/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar", Long.valueOf(1692244463551L));
    _jspx_dependants.put("file:/C:/Users/Tharuka/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/3.0.0/jakarta.servlet.jsp.jstl-3.0.0.jar", Long.valueOf(1692679976646L));
    _jspx_dependants.put("jar:file:/C:/Users/Tharuka/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/3.0.0/jakarta.servlet.jsp.jstl-3.0.0.jar!/META-INF/c-1_2.tld", Long.valueOf(1649416098000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("lk.verdana.ecom.util.HibernateUtil");
    _jspx_imports_classes.add("lk.verdana.ecom.entity.Category");
    _jspx_imports_classes.add("lk.verdana.ecom.entity.Product");
    _jspx_imports_classes.add("org.hibernate.SessionFactory");
    _jspx_imports_classes.add("org.hibernate.Session");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      response.setContentType("text/html");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session openSession = sessionFactory.openSession();





    List<Product> products = openSession.createQuery("SELECT product FROM Product product", Product.class)
            .getResultList();

    pageContext.setAttribute("products", products);

    List<Category> category = openSession.createQuery("select category from Category category", Category.class).getResultList();
    pageContext.setAttribute("category", category);

      out.write('\r');
      out.write('\n');
      if (_jspx_meth_layout_005fextends_005f0(_jspx_page_context))
        return;
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

  private boolean _jspx_meth_layout_005fextends_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:extends
    lk.callidora.jsp.inheritance.ExtendsTag _jspx_th_layout_005fextends_005f0 = new lk.callidora.jsp.inheritance.ExtendsTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fextends_005f0);
    try {
      _jspx_th_layout_005fextends_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/views/backend/products.jsp(26,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fextends_005f0.setName("adminbase");
      _jspx_th_layout_005fextends_005f0.setJspBody(new Helper( 0, _jspx_page_context, _jspx_th_layout_005fextends_005f0, null));
      _jspx_th_layout_005fextends_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fextends_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f0 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f0);
    try {
      _jspx_th_layout_005fput_005f0.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f0.setParent(_jspx_parent);
      // /WEB-INF/views/backend/products.jsp(27,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f0.setBlock("adminContent");
      // /WEB-INF/views/backend/products.jsp(27,4) name = type type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f0.setType("REPLACE");
      _jspx_th_layout_005fput_005f0.setJspBody(new Helper( 1, _jspx_page_context, _jspx_th_layout_005fput_005f0, null));
      _jspx_th_layout_005fput_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(new jakarta.servlet.jsp.tagext.TagAdapter((jakarta.servlet.jsp.tagext.SimpleTag) _jspx_parent));
      // /WEB-INF/views/backend/products.jsp(45,32) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("products");
      // /WEB-INF/views/backend/products.jsp(45,32) name = items type = jakarta.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/backend/products.jsp(45,32) '${products}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${products}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                                    <tr onclick=\"editProduct(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${products.id}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(")\">\r\n");
            out.write("                                        <th scope=\"row\"><input type=\"checkbox\" /></th>\r\n");
            out.write("                                        <td class=\"tm-product-name\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${products.name}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("                                        <td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${products.price}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("                                        <td>fv</td>\r\n");
            out.write("                                        <td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${products.description}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("                                        <td>\r\n");
            out.write("                                            <a onclick=\"deleteSelectProduct(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${products.id}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(")\" href=\"#\" class=\"tm-product-delete-link\">\r\n");
            out.write("                                                <i class=\"far fa-trash-alt tm-product-delete-icon\"></i>\r\n");
            out.write("                                            </a>\r\n");
            out.write("                                        </td>\r\n");
            out.write("                                    </tr>\r\n");
            out.write("                                ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          throw new jakarta.servlet.jsp.SkipPageException();
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f1(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f1_reused = false;
    try {
      _jspx_th_c_005fforEach_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f1.setParent(new jakarta.servlet.jsp.tagext.TagAdapter((jakarta.servlet.jsp.tagext.SimpleTag) _jspx_parent));
      // /WEB-INF/views/backend/products.jsp(78,32) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setVar("category");
      // /WEB-INF/views/backend/products.jsp(78,32) name = items type = jakarta.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/backend/products.jsp(78,32) '${category}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${category}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f1 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f1 = _jspx_th_c_005fforEach_005f1.doStartTag();
        if (_jspx_eval_c_005fforEach_005f1 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                                    <tr>\r\n");
            out.write("                                        <td class=\"tm-product-name\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${category.name}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("                                        <td class=\"text-center\">\r\n");
            out.write("                                            <a onclick=\"deleteProduct(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${category.id}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(")\" class=\"tm-product-delete-link\">\r\n");
            out.write("                                                <i class=\"far fa-trash-alt tm-product-delete-icon\"></i>\r\n");
            out.write("                                            </a>\r\n");
            out.write("                                        </td>\r\n");
            out.write("                                    </tr>\r\n");
            out.write("                                ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f1.doAfterBody();
            if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f1.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          throw new jakarta.servlet.jsp.SkipPageException();
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f1.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f1);
      _jspx_th_c_005fforEach_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f1_reused);
    }
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private jakarta.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, jakarta.servlet.jsp.JspContext jspContext, jakarta.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f0(_jspx_parent, _jspx_page_context))
        return true;
      out.write('\r');
      out.write('\n');
      return false;
    }
    public boolean invoke1( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("        <div class=\"container mt-5\">\r\n");
      out.write("            <div class=\"row tm-content-row\">\r\n");
      out.write("                <div class=\"col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col\">\r\n");
      out.write("                    <div class=\"tm-bg-primary-dark tm-block tm-block-products\">\r\n");
      out.write("                        <div class=\"tm-product-table-container\">\r\n");
      out.write("                            <table class=\"table table-hover tm-table-small tm-product-table\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th scope=\"col\">&nbsp;</th>\r\n");
      out.write("                                    <th scope=\"col\">PRODUCT NAME</th>\r\n");
      out.write("                                    <th scope=\"col\">price</th>\r\n");
      out.write("                                    <th scope=\"col\">un id</th>\r\n");
      out.write("                                    <th scope=\"col\">Description</th>\r\n");
      out.write("                                    <th scope=\"col\">&nbsp;</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("                                ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_parent, _jspx_page_context))
        return true;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- table container -->\r\n");
      out.write("                        <a\r\n");
      out.write("                                href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/addproduct\"\r\n");
      out.write("                                class=\"btn btn-primary btn-block text-uppercase mb-3\">Add new product</a>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col\">\r\n");
      out.write("                    <div class=\"tm-bg-primary-dark tm-block tm-block-product-categories\">\r\n");
      out.write("                        <h2 class=\"tm-block-title\">Product Categories</h2>\r\n");
      out.write("                        <div class=\"tm-product-table-container\">\r\n");
      out.write("                            <table class=\"table tm-table-small tm-product-table\">\r\n");
      out.write("                                <tbody>\r\n");
      out.write("                                ");
      if (_jspx_meth_c_005fforEach_005f1(_jspx_parent, _jspx_page_context))
        return true;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- table container -->\r\n");
      out.write("                        <a\r\n");
      out.write("                                href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/addcategory\"\r\n");
      out.write("                                class=\"btn btn-primary btn-block text-uppercase mb-3\">Add new product</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script>\r\n");
      out.write("            function deleteProduct(id){\r\n");
      out.write("                alert(id)\r\n");
      out.write("                fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/deletproductprocess',{\r\n");
      out.write("                    method:'post',\r\n");
      out.write("                    headers:{\r\n");
      out.write("                        'Content-Type': 'application/json'\r\n");
      out.write("                    },\r\n");
      out.write("                    body: JSON.stringify({\r\n");
      out.write("                        id:id\r\n");
      out.write("                    })\r\n");
      out.write("                }).then(response => response.text())\r\n");
      out.write("                    .then(\r\n");
      out.write("\r\n");
      out.write("                        text => {\r\n");
      out.write("                            alert(text);\r\n");
      out.write("                            if(text==\"deleted\"){\r\n");
      out.write("                                alert(text);\r\n");
      out.write("                                window.location = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/product\"\r\n");
      out.write("                            }else if (text==\"Register success\"){\r\n");
      out.write("                                alert(text)\r\n");
      out.write("                                window.location = \"./\"\r\n");
      out.write("                            }\r\n");
      out.write("                        })\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function deleteSelectProduct(id){\r\n");
      out.write("                alert(id)\r\n");
      out.write("                fetch('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/deletselectproductprocess',{\r\n");
      out.write("                    method:'post',\r\n");
      out.write("                    headers:{\r\n");
      out.write("                        'Content-Type': 'application/json'\r\n");
      out.write("                    },\r\n");
      out.write("                    body: JSON.stringify({\r\n");
      out.write("                        id:id\r\n");
      out.write("                    })\r\n");
      out.write("                }).then(response => response.text())\r\n");
      out.write("                    .then(\r\n");
      out.write("\r\n");
      out.write("                        text => {\r\n");
      out.write("                            alert(text);\r\n");
      out.write("                            if(text==\"deleted\"){\r\n");
      out.write("                                alert(text);\r\n");
      out.write("                                window.location = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("adminpanel/product\"\r\n");
      out.write("                            }else if (text==\"Register success\"){\r\n");
      out.write("                                alert(text)\r\n");
      out.write("                                window.location = \"./\"\r\n");
      out.write("                            }\r\n");
      out.write("                        })\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            function editProduct(id){\r\n");
      out.write("                var singleProductUrl = BASE_URL+'adminpanel/editproduct/'+id;\r\n");
      out.write("                window.location.href = singleProductUrl;\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("    ");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws jakarta.servlet.jsp.JspException
    {
      jakarta.servlet.jsp.JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        Object _jspx_saved_JspContext = this.jspContext.getELContext().getContext(jakarta.servlet.jsp.JspContext.class);
        this.jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
          case 1:
            invoke1( out );
            break;
        }
        jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,_jspx_saved_JspContext);
      }
      catch( java.lang.Throwable e ) {
        if (e instanceof jakarta.servlet.jsp.SkipPageException)
            throw (jakarta.servlet.jsp.SkipPageException) e;
        throw new jakarta.servlet.jsp.JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
