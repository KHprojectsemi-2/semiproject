/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.45
 * Generated at: 2019-10-17 08:41:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.bbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Insertbbs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("\r\n\r\n\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<title>게시 입력 화면</title>\r\n\r\n<!-- include libraries(jQuery, bootstrap) -->\r\n<link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css\" rel=\"stylesheet\">\r\n<script src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js\"></script> \r\n<script src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js\"></script> \r\n\r\n<!-- include summernote css/js-->\r\n<link href=\"http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css\" rel=\"stylesheet\">\r\n<script src=\"http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js\"></script>\r\n\r\n\r\n</head>\r\n<body>\r\n\r\n      <form>\r\n        <h2 align=\"center\">게시글 작성</h2>\r\n\t\t<div align=\"center\" class=\"tableArea\">\r\n\t\t\t<form action=/insertBbs.bo\" method=\"get\">\r\n\t\t \t\t<table>\r\n\t\t\t\t\t<div>\r\n\t\t\t\t\t<button type=\"submit\">게시</button>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>제목</td>\r\n\t\t\t\t\t\t<td colsapn=\"4\"><input type=\"text\" size=\"60\" name=\"title\" placeholder=\"제목을 입력해 주세요\"></td>&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<td>게시자</td>\r\n\t\t\t\t\t\t<td colsapn=\"4\"><input type=\"text\" size=\"24\" name=\"poster_name\"></td>\r\n\t\t\t\t\t</tr>\r\n\t\t\t\t\t<div></div>\r\n\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t<td>게시일</td>\r\n\t\t\t\t\t\t<td colsapn=\"4\"><input type=\"text\" size=\"30\" name=\"poster_date\"></td>&nbsp;&nbsp;\r\n\t\t\t\t\t\t<td>구분</td>\r\n\t\t\t\t\t\t<td>\r\n\t\t\t\t\t\t\t<input type=\"radio\" name=\"notice1\" value=\"notice1\">일반</input>&nbsp;&nbsp;\r\n\t\t\t\t\t\t\t<input type=\"radio\" name=\"notice2\" value=\"notice2\">공지</input>\r\n\t\t\t\t\t\t</td>\r\n\t\t\t\t\t</tr>\r\n\t\t \t\t\t<tr>\r\n\t\t\t\t\t<td>내용</td>\r\n\t\t\t\t\t<td colspan=\"4\">\r\n        \t\t\t\t<textarea name=\"content\" id=\"summernote\" value=\"content\" ></textarea>\r\n \t\t\t\t\t</td>\r\n\t\t\t\t</tr>\r\n        \t<script>\r\n   \t      \t  $(document).ready(function() {\r\n   \t   \t\t  $('#summernote').summernote({\r\n   \t             height: 300,                 // set editor height\r\n   \t             minHeight: null,             // set minimum height of editor\r\n   \t             maxHeight: null,             // set maximum height of editor\r\n   \t             focus: true                  // set focus to editable area after initializing summernote\r\n");
      out.write("   \t  \t\t   });\r\n   \t\t\t});\r\n        \t</script>\r\n        \t</table>\r\n        </form>\r\n \r\n        \t<!--  InsertBbsServlet 만들러 ㄱㄱ씽 -->\r\n</body>\r\n</html>");
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
