<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Inspector Page</title>
    </head>
    <body>
    <form id="user_report" class="user_report">
        <fieldset>
            <legend class=" user_report_text">
                Please, input some data, which helps make a report:
            </legend>
            <p><label for="name">Name: </label><input type="text" id="name" placeholder="Name"/></p>
            <p><label for="email">Email: </label><input type="email" id="email" placeholder="Email"/></p>
            <p><label for="login">Login: </label><input type="text" id="login" placeholder="Login"/></p>
            <p><label for="password">Password: </label><input type="password" id="password" placeholder="Password"/></p>
            <p><label for="phone">Phone: </label> <input type="tel" id="phone" placeholder="Phone"/></p>
        </fieldset>
        <div class="user_report_buttons">
            <button class="user_report_button accept">
                Accept
            </button>
            <button class="user_report_button cancel">
                Cancel
            </button>
        </div>
    </form>
    </body>
</html>
