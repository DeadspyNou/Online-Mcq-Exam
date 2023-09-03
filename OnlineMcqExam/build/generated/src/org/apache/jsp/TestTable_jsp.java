package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class TestTable_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/index.html");
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
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div style=\"text-align: center\"> \r\n");
      out.write("            <h1 id=\"heading\" style=\"background-color: orange\">WELCOME TO ONLINE MCQ EXAM<br>@CCSP</br></h1>\r\n");
      out.write("            <input type=\"text\"  placeholder=\"Enter The Test Id\">\r\n");
      out.write("            <input type=\"submit\" value=\"Search\">\r\n");
      out.write("            <form action=\"TestTable.jsp\"><br>\r\n");
      out.write("            <input type=\"submit\" id=\"MQ\" value=\"Make A Quiz\" disabled>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
      out.write(" \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        <form id=\"Student2\" action=\"Aloged.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Back\" >\n");
      out.write("        </form>\n");
      out.write("        <h1 style=\"color: orange\" >Make A Quiz</h1>\n");
      out.write("        Create A Test File\n");
      out.write("        <div style=\"text-align: center\">\n");
      out.write("            <form action=\"AddQuestions.jsp\">\n");
      out.write("                <p>\n");
      out.write("                    <input type=\"text\" id=\"sub\" name=\"sub\" placeholder=\"Enter The Subject\" >\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <input type=\"text\" id=\"Std\" name=\"Std\" placeholder=\"Enter The Std\" >\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <input type=\"text\" id=\"Tno\" name=\"Tnm\" placeholder=\"Test Name\" >\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <input type=\"text\" id=\"NMark\" name=\"NMARK\" placeholder=\"Negative mrk (eg, (0 or -1) per incorrect ans)\" >\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <input type=\"submit\" value=\"Next\" id=\"lessgoo\" >\n");
      out.write("                </p>\n");
      out.write("                \n");
      out.write("                    \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        </body>\n");
      out.write("        </html>\n");
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
