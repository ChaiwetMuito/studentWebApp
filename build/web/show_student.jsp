<%-- 
    Document   : show_student
    Created on : Feb 15, 2021, 10:19:10 AM
    Author     : YUME
--%>
<%@page import="java.util.Iterator"%>
<%@page import="model.StudentTable"%>
<%@page import="model.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show student</title>
    </head>
    <jsp:useBean id="emp" class="model.Student" scope="request"/>
     <%
                       
            List<Student> empList = StudentTable.findAllStudent();
            Iterator<Student> itr = empList.iterator();
            
     %>
    <body>
        <center>
        <h1>Student List</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>GPA</th>
          </tr>
          <%
              
               while(itr.hasNext()) {
                   emp = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ emp.getId() + "</td>");
                   out.println("<td> "+ emp.getName() + "</td>");
                   out.println("<td> "+ emp.getGpa() + "</td>");
                   out.println("<tr>");
               }
          %>
    </table>
    <a href="index.html">Back to Menu</a>
 </center>
    </body>
</html>
