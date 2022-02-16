package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class formPinjam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                String level(String lvl) {
                    if (lvl.equalsIgnoreCase("Level 1")) {
                        return "<input type=time name=jammulai placeholder=\"Jam Mulai\"> sampai"
                                + "<input type=time name=jamakhir placeholder=\"Jam Akhir\"><br>";
                    } else if (lvl.equalsIgnoreCase("Level 2")) {
                        return "<input type=time name=jammulai placeholder=\"Jam Mulai\"> sampai"
                                + "<input type=time name=jamakhir placeholder=\"Jam Akhir\"><br>";
                    } else {
                        return "<input type=time name=jammulai placeholder=\"Jam Mulai\"> sampai"
                                + "<input type=time name=jamakhir placeholder=\"Jam Akhir\"><br>";
                    }
                }
            
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("            <input type=\"text\" name=\"namapinjam\" placeholder=\"Nama Peminjam\"><br>\n");
      out.write("            <input type=\"text\" name=\"nimp\" placeholder=\"NIM/NIP\"><br>\n");
      out.write("            <input type=\"email\" name=\"email\" placeholder=\"Email\"><br>\n");
      out.write("            <input type=\"text\" name=\"notelp\" placeholder=\"No Telepon\"><br>\n");
      out.write("            <select name=\"level\">\n");
      out.write("                <option value=\"Level 1\">Level 1</option>\n");
      out.write("                <option value=\"Level 2\">Level 2</option>\n");
      out.write("                <option value=\"Level 3\">Level 3</option>\n");
      out.write("            </select>\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

                
            
      out.write("\n");
      out.write("            ");
  
                Date dNow = new Date();
                SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yy");
            
      out.write("\n");
      out.write("            <input type=\"date\" name=\"tglpinjam\" value=\"");
      out.print(ft.format(dNow));
      out.write("\" disabled><br>\n");
      out.write("            <input type=\"date\" name=\"tglmulai\" placeholder=\"Tanggal Menggunakan Lab\"><br>\n");
      out.write("            <input type=\"date\" name=\"tglakhir\" placeholder=\"Tanggal Mengembalikan Lab\"><br>\n");
      out.write("            <input type=\"time\" name=\"jammulai\" placeholder=\"Jam Mulai\"> sampai\n");
      out.write("            <input type=\"time\" name=\"jamakhir\" placeholder=\"Jam Akhir\"><br>\n");
      out.write("            <textarea name=\"keperluan\" placeholder=\"Keperluan\"></textarea><br>\n");
      out.write("            <input type=\"int\" name=\"tglmulai\" placeholder=\"Tanggal Menggunakan Lab\"><br>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
