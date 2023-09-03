package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ValToDb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write(" ");
 if(request.getParameter("submit")!=null)
 {out.println("<br>Hello");}else{
     out.println("<br>ERROR");
 }
 
 
      out.write("\n");
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
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
        try {
                Class.forName("com.mysql.jdbc.Driver"); // drive class name
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library?useSSL=false","root","1234"); // database path
                Statement st = cn.createStatement();
                String sub=request.getParameter("sub");  
                String Std=request.getParameter("Std");
                String Tnm=request.getParameter("Tname"); 
                String Question=request.getParameter("Question");  
                String correct=request.getParameter("correct");
                String o2=request.getParameter("o2");  
                String o3=request.getParameter("o3");
                String o4=request.getParameter("o4");
                String dmark=request.getParameter("qMark");
                String zmark=request.getParameter("NMARK");
                int qMark=(Integer.parseInt(dmark));
                int NMark=(Integer.parseInt(zmark));
                String TableName=sub+Std+Tnm;
                String myCtQuery="CREATE TABLE IF NOT EXISTS "+ TableName+"(TID int AUTO_INCREMENT ,Question text,AnsWer text,opt1 text,opt2 text, opt3 text,subject text,std text,Tnm text ,mrks int,Nmart int);";
                st.execute(myCtQuery);
                String AddQuerry="INSERT INTO '"+TableName+"'(,'"+Question+"','"+correct+"','"+o2+"','"+o3+"','"+o4+"','"+sub+"','"+Tnm+"',"+qMark+","+NMark+");";
            }
            catch(ClassNotFoundException | SQLException | NumberFormatException nooo){
                out.println("Error Connecting "+nooo);
            }    
        
        
      out.write("\n");
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
