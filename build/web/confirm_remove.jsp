<%-- 
    Document   : confirm_remove
    Created on : Feb 15, 2021, 10:41:11 AM
    Author     : YUME
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Remove Student</title>
    </head>
    <body>
        <%
            Student emp = (Student) session.getAttribute("student");
            
        %>
        <form name="confirmRemove" action="ConfirmRemoveController">
            ID: <%= emp.getId() %> </br>
            Name: <%= emp.getName() %> </br>
            Salary: <%= emp.getGpa()%> </br>
            <input type="submit" value="Delete" name="delete" />
            <input type="submit" value="Cancel" name="cancel" />
            
        </form>
    </body>
</html>
