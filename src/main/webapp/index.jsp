<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="container">
    <h2>Login Form</h2>

    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Enter Username" required />
        <input type="password" name="password" placeholder="Enter Password" required />
        <button type="submit">Login</button>
    </form>
</div>

</body>
</html>