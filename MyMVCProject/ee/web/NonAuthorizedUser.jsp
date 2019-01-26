<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Non authorized</title>
    </head>
    <body>
        Please, first make an authorization or registration!
        <form action="admin" method="post">
            <input type="text" placeholder="Login" name="admin_login"/>
            <input type="password" placeholder="Password" name="admin_password"/>
            <div class="buttons">
                <button type="submit" class="Admin_registr_accept">Accept</button>
                <button type="reset" class="Admin_registr_cancel">Cancel</button>
            </div>
        </form>
        <button>Registration</button>
    </body>
</html>
