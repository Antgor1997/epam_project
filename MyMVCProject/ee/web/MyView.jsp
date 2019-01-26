<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>MyExample</title>
    </head>
    <body>
        <jsp:useBean id="Student" class="models.Student" scope="request" />
        <jsp:getProperty name="Student" property="name" />
        <h1>Your first mvc application works!)</h1>
    </body>
</html>