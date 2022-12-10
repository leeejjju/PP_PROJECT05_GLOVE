<%--
  Created by IntelliJ IDEA.
  User: Pearl LEE
  Date: 2022-12-10
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hidden</title>
</head>
<body>

<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String msg = "";
  boolean ok = false;
  if(id.equals("admin") && pw.equals("1234")){
    msg = "welcome, admin :)";
    ok = true;
  }else{
    msg = "wrong id/pw :(";
  }

%>

<script>
  alert('<%=msg%>');
  if(<%=ok%>)location.href='../admin/list';
  else history.back();

</script>

</body>
</html>
