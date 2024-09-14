<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<h2>Student: ${param.get("firstName")} ${param.get("lastName")}</h2>--%>
<h2>Student: ${param.firstName} ${param.lastName}</h2>
<h2>Country: ${param.country}</h2>
<%--<h2>Favorite language: ${param.favoriteLanguage}</h2>--%>

<ul>
    <%
        String[] langs = request.getParameterValues("favoriteLanguage");
        for (String temp: langs) {
            out.println("<li>" + temp + "</li>");
        }
    %>
</ul>
</body>
</html>
