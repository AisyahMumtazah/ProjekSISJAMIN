package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class homelogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/link.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Peminjaman Lab JTI - Login</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<link href=\"vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"css/ruang-admin.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<!-- Select2 -->\n");
      out.write("<link href=\"vendor/select2/dist/css/select2.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- Bootstrap DatePicker -->  \n");
      out.write("<link href=\"vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css\" rel=\"stylesheet\" >\n");
      out.write("<!-- Bootstrap Touchspin -->\n");
      out.write("<link href=\"vendor/bootstrap-touchspin/css/jquery.bootstrap-touchspin.css\" rel=\"stylesheet\" >\n");
      out.write("<!-- ClockPicker -->\n");
      out.write("<link href=\"vendor/clock-picker/clockpicker.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\n");
      out.write("<link href='fullcalendar/packages/core/main.css' rel='stylesheet' />\n");
      out.write("<link href='fullcalendar/packages/daygrid/main.css' rel='stylesheet' />\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("     <body>\n");
      out.write("        <!-- Login Content -->\n");
      out.write("        <div class=\"container-login\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"col-xl-6 col-lg-12 col-md-9\">\n");
      out.write("                    <div class=\"card shadow-sm my-5\">\n");
      out.write("                        <div class=\"card-body p-0\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-12\">\n");
      out.write("                                    <div class=\"login-form\">\n");
      out.write("                                        <div class=\"text-center\">\n");
      out.write("                                            <h1 class=\"h4 text-gray-900 mb-4\">Login</h1>\n");
      out.write("                                        </div>\n");
      out.write("                                        <form action=\"cekLogin.jsp\" method=\"POST\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"text\" name=\"ussername\" class=\"form-control\" id=\"exampleInputEmail\" aria-describedby=\"emailHelp\"\n");
      out.write("                                                       placeholder=\"Username\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"password\" name=\"password\" class=\"form-control\" id=\"exampleInputPassword\" placeholder=\"Password\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <div class=\"custom-control custom-checkbox small\" style=\"line-height: 1.5rem;\">\n");
      out.write("                                                    <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck\">\n");
      out.write("                                                    <label class=\"custom-control-label\" for=\"customCheck\">Remember\n");
      out.write("                                                        Me</label>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                               <a class=\"btn btn-primary btn-block\">\n");
      out.write("                                                <input type=\"submit\" value=\"Login\"/>\n");
      out.write("                                                </a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </form>\n");
      out.write("                                        <hr>\n");
      out.write("                                        <div class=\"text-center\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Login Content -->\n");
      out.write("        <script src=\"../assets/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"../assets/vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/ruang-admin.min.js\"></script>\n");
      out.write("    </body>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
