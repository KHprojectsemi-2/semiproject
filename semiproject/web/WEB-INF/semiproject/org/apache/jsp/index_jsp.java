/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-15 12:46:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/views/common/header.jsp", Long.valueOf(1571143602179L));
    _jspx_dependants.put("/views/common/footer.jsp", Long.valueOf(1571142937197L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <title>leopet || Home</title>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write('\r');
      out.write('\n');

String root = request.getContextPath();


      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <title>leopet || Home</title>\r\n");
      out.write("    <link rel=\"icon\" href=\"img/favicon.png\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/bootstrap.min.css\">\r\n");
      out.write("    <!-- animate CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/animate.css\">\r\n");
      out.write("    <!-- owl carousel CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/owl.carousel.min.css\">\r\n");
      out.write("    <!-- themify CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/themify-icons.css\">\r\n");
      out.write("    <!-- flaticon CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/flaticon.css\">\r\n");
      out.write("    <!-- font awesome CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/magnific-popup.css\">\r\n");
      out.write("    <!-- style CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(root );
      out.write("/css/style.css\">\r\n");
      out.write("    <style>\r\n");
      out.write("       footer{\r\n");
      out.write("          width:cover;\r\n");
      out.write("          height:900px;\r\n");
      out.write("          !important;\r\n");
      out.write("       }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <!--::header part start::-->\r\n");
      out.write("    <header class=\"header_area\">\r\n");
      out.write("        <div class=\"sub_header\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row align-items-center\">\r\n");
      out.write("                  <div class=\"col-4 col-md-4 col-xl-6\">\r\n");
      out.write("                      <div id=\"logo\">\r\n");
      out.write("<<<<<<< HEAD\n");
      out.write("                          <a href=\"");
      out.print(root );
      out.write("/index.jsp\"><img src=\"");
      out.print(root );
      out.write("/img/pett.png\"  width = \"400px\" height = \"125px\" alt=\"\" title=\"\" /></a>\r\n");
      out.write("\n");
      out.write("                      </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-8 col-md-8 col-xl-6 \">\r\n");
      out.write("                      <div class=\"sub_header_social_icon float-right\">\r\n");
      out.write("                      \r\n");
      out.write("                        <!-- <a href=\"#\"><i class=\"flaticon-phone\"></i>+02 213 - 256 (365)</a> -->\r\n");
      out.write("                        <a href=\"");
      out.print(root );
      out.write("/views/user/LoginPage.jsp\" class=\"btn_1 d-none d-md-inline-block\">로그인</a>\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"main_menu\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-12\">\r\n");
      out.write("                        <nav class=\"navbar navbar-expand-lg navbar-light\">\r\n");
      out.write("                            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                                <i class=\"ti-menu\"></i>\r\n");
      out.write("                            </button>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"collapse navbar-collapse justify-content-center\" id=\"navbarSupportedContent\">\r\n");
      out.write("                                <ul class=\"navbar-nav\">\r\n");
      out.write("                                    <li class=\"nav-item active\">\r\n");
      out.write("                                        <a class=\"nav-link active\" href=\"");
      out.print(root );
      out.write("/index.html\"></a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a href=\"");
      out.print(root );
      out.write("/index.jsp\" class=\"nav-link\">소개</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a href=\"views/diary/insertDiary\" class=\"nav-link\">돌봄일지</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a href=\"views/petSitter/petSitterApply\" class=\"nav-link\">펫 시터 지원</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item dropdown\">\r\n");
      out.write("                                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                               펫 시터 예약\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"views/petsitterreservation/petSitterSearch.jsp\">방문 펫 시터 예약</a>\r\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"single-blog.html\">가정집 펫시터 예약</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a href=\"blog.html\" class=\"nav-link\">커뮤니티</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a href=\"views/serviceCenter/\" class=\"nav-link\">고객센터</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    \r\n");
      out.write("   </body>\r\n");
      out.write(" </html>");
      out.write("\r\n");
      out.write("\t<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\r\n");
      out.write("\t<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("    \tfooter{\r\n");
      out.write("    \t\twidth:cover;\r\n");
      out.write("    \t\theight:500px;\r\n");
      out.write("    \t\t!important;\r\n");
      out.write("    \t}\r\n");
      out.write("</style>\r\n");
      out.write("    <!-- jquery plugins here-->\r\n");
      out.write("    <!-- jquery -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/jquery-1.12.1.min.js\"></script>\r\n");
      out.write("    <!-- popper js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/popper.min.js\"></script>\r\n");
      out.write("    <!-- bootstrap js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- counterup js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/jquery.counterup.min.js\"></script>\r\n");
      out.write("    <!-- waypoints js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/waypoints.min.js\"></script>\r\n");
      out.write("    <!-- easing js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/jquery.magnific-popup.js\"></script>\r\n");
      out.write("    <!-- particles js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/owl.carousel.min.js\"></script>\r\n");
      out.write("    <!-- custom js -->\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath() );
      out.write("/js/custom.js\"></script>\r\n");
      out.write("    <link rel=\"icon\" href=\"");
      out.print(request.getContextPath() );
      out.write("/img/favicon.png\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/bootstrap.min.css\">\r\n");
      out.write("    <!-- animate CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/animate.css\">\r\n");
      out.write("    <!-- owl carousel CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/owl.carousel.min.css\">\r\n");
      out.write("    <!-- themify CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/themify-icons.css\">\r\n");
      out.write("    <!-- flaticon CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/flaticon.css\">\r\n");
      out.write("    <!-- font awesome CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/magnific-popup.css\">\r\n");
      out.write("    <!-- style CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- footer part start-->\r\n");
      out.write("    <footer class=\"footer_area padding_top\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!-- footer part end-->\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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
