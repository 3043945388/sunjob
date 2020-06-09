<%@ page import="com.pojo.Student" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Mr胡
  Date: 2020/6/3
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>



<c:set var="sex" value="7"></c:set>
<c:if test="${sex==1}" var="f">
    男
</c:if>

<c:if test="${not f}">
    女
</c:if>

<c:forEach begin="1" end="100" var="i" step="2">
    ${i}
</c:forEach>

<%
    String[] strings = new String[]{"aa" , "bb" , "cc"};
    request.setAttribute("strings" , strings);
%>

<c:forEach items="${strings}" var="s">
    ${s}
</c:forEach>

<%
    Student student = new Student();
    student.setSutid(1);
    student.setStuname("国庆");
    request.setAttribute("student" , student);
%>
${student.getSutid()}
${student.stuname}

<%
    Map map = new HashMap();
    map.put("student" ,student);
    request.setAttribute("map" , map);
%>

${map.student.stuname}


</body>
</html>
