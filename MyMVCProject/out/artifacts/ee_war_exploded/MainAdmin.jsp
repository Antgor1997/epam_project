<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Admin's page</title>
    </head>
    <body>
        <form action="admin" method="post">
            <input type="text" placeholder="Login" name="admin_login"/>
            <input type="password" placeholder="Password" name="admin_password"/>
            <div class="buttons">
                <button type="submit" class="Admin_registr_accept">Accept</button>
                <button type="reset" class="Admin_registr_cancel">Cancel</button>
            </div>
        </form>
        This is admins window!
    </body>
</html>
