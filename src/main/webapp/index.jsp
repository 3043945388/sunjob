
    <%@ page isELIgnored="false" %>
<html>
<body>

${1+2}
${"1"+"2"}
\${"a"+"b"}
${1/2}

<!-- 作用域对象取值并且输出 -->
<% request.setAttribute("a" , 10);%>
<% session.setAttribute("a" , 20);%>
<% application.setAttribute("a" , 30);%>
${b}

</body>
</html>
