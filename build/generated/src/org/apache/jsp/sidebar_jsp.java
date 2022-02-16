package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/ruang-admin.min.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <!--<body id=\"page-top\">-->\n");
      out.write("        <!-- Sidebar -->\n");
      out.write("        <ul class=\"navbar-nav sidebar sidebar-light accordion\" id=\"accordionSidebar\">\n");
      out.write("            <a class=\"sidebar-brand d-flex align-items-center justify-content-center\" href=\"index.html\">\n");
      out.write("                <div class=\"sidebar-brand-icon\">\n");
      out.write("                    <img src=\"img/logo/logo2.png\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"sidebar-brand-text mx-3\">RuangAdmin</div>\n");
      out.write("            </a>\n");
      out.write("            <hr class=\"sidebar-divider my-0\">\n");
      out.write("            <li class=\"nav-item active\">\n");
      out.write("                <a class=\"nav-link\" href=\"index.html\">\n");
      out.write("                    <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                    <span>Dashboard</span></a>\n");
      out.write("            </li>\n");
      out.write("            <hr class=\"sidebar-divider\">\n");
      out.write("            <div class=\"sidebar-heading\">\n");
      out.write("                Features\n");
      out.write("            </div>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseBootstrap\"\n");
      out.write("                   aria-expanded=\"true\" aria-controls=\"collapseBootstrap\">\n");
      out.write("                    <i class=\"far fa-fw fa-window-maximize\"></i>\n");
      out.write("                    <span>Bootstrap UI</span>\n");
      out.write("                </a>\n");
      out.write("                <div id=\"collapseBootstrap\" class=\"collapse\" aria-labelledby=\"headingBootstrap\" data-parent=\"#accordionSidebar\">\n");
      out.write("                    <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                        <h6 class=\"collapse-header\">Bootstrap UI</h6>\n");
      out.write("                        <a class=\"collapse-item\" href=\"alerts.html\">Alerts</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"buttons.html\">Buttons</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"dropdowns.html\">Dropdowns</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"modals.html\">Modals</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"popovers.html\">Popovers</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"progress-bar.html\">Progress Bars</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseForm\" aria-expanded=\"true\"\n");
      out.write("                   aria-controls=\"collapseForm\">\n");
      out.write("                    <i class=\"fab fa-fw fa-wpforms\"></i>\n");
      out.write("                    <span>Forms</span>\n");
      out.write("                </a>\n");
      out.write("                <div id=\"collapseForm\" class=\"collapse\" aria-labelledby=\"headingForm\" data-parent=\"#accordionSidebar\">\n");
      out.write("                    <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                        <h6 class=\"collapse-header\">Forms</h6>\n");
      out.write("                        <a class=\"collapse-item\" href=\"form_basics.html\">Form Basics</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"form_advanceds.html\">Form Advanceds</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapseTable\" aria-expanded=\"true\"\n");
      out.write("                   aria-controls=\"collapseTable\">\n");
      out.write("                    <i class=\"fas fa-fw fa-table\"></i>\n");
      out.write("                    <span>Tables</span>\n");
      out.write("                </a>\n");
      out.write("                <div id=\"collapseTable\" class=\"collapse\" aria-labelledby=\"headingTable\" data-parent=\"#accordionSidebar\">\n");
      out.write("                    <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                        <h6 class=\"collapse-header\">Tables</h6>\n");
      out.write("                        <a class=\"collapse-item\" href=\"simple-tables.html\">Simple Tables</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"datatables.html\">DataTables</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"ui-colors.html\">\n");
      out.write("                    <i class=\"fas fa-fw fa-palette\"></i>\n");
      out.write("                    <span>UI Colors</span>\n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("            <hr class=\"sidebar-divider\">\n");
      out.write("            <div class=\"sidebar-heading\">\n");
      out.write("                Examples\n");
      out.write("            </div>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link collapsed\" href=\"#\" data-toggle=\"collapse\" data-target=\"#collapsePage\" aria-expanded=\"true\"\n");
      out.write("                   aria-controls=\"collapsePage\">\n");
      out.write("                    <i class=\"fas fa-fw fa-columns\"></i>\n");
      out.write("                    <span>Pages</span>\n");
      out.write("                </a>\n");
      out.write("                <div id=\"collapsePage\" class=\"collapse\" aria-labelledby=\"headingPage\" data-parent=\"#accordionSidebar\">\n");
      out.write("                    <div class=\"bg-white py-2 collapse-inner rounded\">\n");
      out.write("                        <h6 class=\"collapse-header\">Example Pages</h6>\n");
      out.write("                        <a class=\"collapse-item\" href=\"login.html\">Login</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"register.html\">Register</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"404.html\">404 Page</a>\n");
      out.write("                        <a class=\"collapse-item\" href=\"blank.html\">Blank Page</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"charts.html\">\n");
      out.write("                    <i class=\"fas fa-fw fa-chart-area\"></i>\n");
      out.write("                    <span>Charts</span>\n");
      out.write("                </a>\n");
      out.write("            </li>\n");
      out.write("            <hr class=\"sidebar-divider\">\n");
      out.write("            <div class=\"version\" id=\"version-ruangadmin\"></div>\n");
      out.write("        </ul>\n");
      out.write("        <!-- Sidebar -->\n");
      out.write("<!--    </body>\n");
      out.write("</html>-->\n");
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
