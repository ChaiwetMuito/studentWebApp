<%-- 
    Document   : confirm_update
    Created on : Feb 15, 2021, 10:51:21 AM
    Author     : YUME
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>confirm update student</title>
    </head>
    <%Student emp = (Student )session.getAttribute("student"); %>
    <body>
        <form name="confirmUpdate" action="ConfirmUpdateController">
            ID: <%=emp.getId()%>
            </br>
            Name: <input type="text" name="name" value="<%=emp.getName()%>" size="40" />
            </br>
            GPA <input type="text" name="gpa" value="<%=emp.getGpa()%>" size="10" />
            </br>
            <input type="submit" value="Update" name="update" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
    </body>
</html>
