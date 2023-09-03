package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class AddQuestions_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("           ");
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
      out.write("            <form action=\"SearchRecords.jsp\"><br>\r\n");
      out.write("            <input type=\"text\"  placeholder=\"Enter The Test Id\" name=\"searchdata\">\r\n");
      out.write("            <input type=\"submit\" value=\"Search\">\r\n");
      out.write("            </form>\r\n");
      out.write("            <form action=\"TestTable.jsp\"><br>\r\n");
      out.write("            <input type=\"submit\" id=\"MQ\" value=\"Make A Quiz\" disabled>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        <form id=\"Student\" action=\"TestTable.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Back\" >\n");
      out.write("        </form>\n");
      out.write("            <h1 style=\"color: orange\" >Add Questions</h1>\n");
      out.write("        <form action=\"ValToDb.jsp\">\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver");
                out.println("<label>Select Test</label>");
                out.println("<select name=\"TableName\">");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                Statement st = cn.createStatement();
                ResultSet tablesnames=st.executeQuery("show tables;");
                while (tablesnames.next()) {
                    String NOU = tablesnames.getString(1);
                    out.println("<option value="+NOU+">"+NOU+"</option>");
                }
                String sub=request.getParameter("sub");
                String Std=request.getParameter("Std");
                String Tnm=request.getParameter("Tnm");
                String TableName,STableName;
                TableName=sub+"_"+Std+"_"+Tnm;
                STableName=Tnm+"_"+Std+"_"+sub;
                String NMARK=request.getParameter("NMARK");
                out.println("<type="+"hidden"+" name="+"NMARK"+" value="+NMARK+">");
                if(sub == null || sub.length() == 0){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                
                out.println("</select>");
                out.println("<input type="+"hidden" +" name="+"Table_Name"+" value="+TableName+">");
                }catch(Exception e){
                        System.out.println(e);
                }
                }
                else {
                try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                Statement st4 = cn4.createStatement();
                String myCtQuery="CREATE TABLE IF NOT EXISTS "+ TableName+"(TID int primary key AUTO_INCREMENT, Question text,AnsWer text,opt1 text,opt2 text, opt3 text,mrks text,Nmark text);";
                st4.execute(myCtQuery);
                cn4.close();
                Connection cn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentResult?useSSL=false","root","1234"); // database path
                Statement st2 = cn2.createStatement();
                String myCtQuerys="CREATE TABLE IF NOT EXISTS "+ STableName+"(Sroll text primary key );";
                st2.execute(myCtQuerys);
                out.println("<option value="+TableName+">"+TableName+"</option>");
                out.println("<input type="+"hidden" +" name="+"Table_Name"+" value="+TableName+">");
                
                }
            catch(Exception e){}
                 out.println("<input type=hidden name=Table_Name value="+TableName+">");
                 out.println("<input type=hidden name=STable_Name value="+STableName+">");
                out.println("<input type=hidden name=NMARK value="+NMARK+">");}
                   out.println("</select>");   
            
      out.write("\n");
      out.write("       \n");
      out.write("            <h1>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${TableName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div style=\"text-align: center\"> \n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"ques\" name=\"Question\" placeholder=\"Enter The Question\" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"corr\" name=\"correct\" placeholder=\"Correct Answer\" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"o2\" name=\"o2\" placeholder=\"Option 2\" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"o3\" name=\"o3\" placeholder=\"Option 3\" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"04\" name=\"o4\" placeholder=\"Option 4\" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("            <input type=\"text\" id=\"qMark\" name=\"qMark\" placeholder=\"How Much Marks ! \" >\n");
      out.write("            </p>\n");
      out.write("            <p>\n");
      out.write("               <input type=\"submit\" value=\"Add Record\" >\n");
      out.write("            </p>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("            </form>\n");
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
