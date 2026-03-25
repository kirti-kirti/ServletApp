<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String user = (String) session.getAttribute("user");

    if(user == null){
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
</head>
<body>

<h1>Welcome <%= user %> 🎉</h1>

<a href="LogoutServlet">Logout</a>

</body>
</html>