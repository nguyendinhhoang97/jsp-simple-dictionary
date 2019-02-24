<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: HoangNguyenDinh97
  Date: 1/16/2019
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");
%>
<h2><%
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null) {
        out.println("<p style='color: red; border: 3px black solid; padding: 5px; width: 300px; text-align:left'>");
        out.println("Word: " + search);
        out.println("</p");
        out.println("<br>");
        out.println("<p style='color: red; border: 3px black solid; padding: 5px; width: 300px; text-align:left'>");
        out.println("Result: " + result);
        out.println("</p");
    } else {
        out.println("Not found");
    }
%>
</h2>
</body>
</html>
