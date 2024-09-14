<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.java3n_jspservletbasics_sd19302.FunUtils" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<%--1. expressions--%>
<p><%= 3 + 5 %></p>
<p><%= 69 > 70 %></p>
<p><%= new java.util.Date() %></p>
<p><%= new String("Hello sd19302").toUpperCase() %></p>

<%--2. scriptlets--%>
<%
    for (int i = 1; i < 6; ++i) {
        out.println(i);
        out.println("<br>");
    }
%>

<%--3. declarations--%>
<%!
    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>
<p><%= makeItLower("HELLO SD19302")%></p>

<%--4. Calling java code from JSP--%>
<p><%= com.example.java3n_jspservletbasics_sd19302.FunUtils.makeItUpper("hi sd19302") %></p>
<p><%= FunUtils.makeItUpper("hi sd19302") %></p>

<%--5. Built-in Objects in JSP--%>
<%--out, request, response, session, cookie, param, ...--%>
<p><%= request.getHeader("User-Agent") %></p>
<p><%= request.getLocale() %></p>

<%--6. form--%>
<%--7. Dropdown list, checkbox, radio button--%>
<form action="student-response.jsp">
    First name: <input type="text" name="firstName">
    <br>
    Last name: <input type="text" name="lastName">
    <br>
    <select name="country">
        <option>Vietnam</option>
        <option>Lao</option>
        <option>Singapore</option>
    </select>
    <br>
<%--    <input type="radio" name="favoriteLanguage" value="Java">Java--%>
<%--    <input type="radio" name="favoriteLanguage" value="C#">C#--%>
<%--    <input type="radio" name="favoriteLanguage" value="Javascript">Javascript--%>

    <input type="checkbox" name="favoriteLanguage" value="Java">Java
    <input type="checkbox" name="favoriteLanguage" value="C#">C#
    <input type="checkbox" name="favoriteLanguage" value="Javascript">Javascript

    <br>
    <input type="submit" value="Submit">
</form>



<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>
