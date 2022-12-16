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
  int ok = 0;
  if(id.equals("admin") && pw.equals("1234")){
    msg = "welcome, admin :)";
    ok = 1;
  }
  else if(id.equals("user") && pw.equals("1234")){
    msg = "welcome, user :)";
    ok = 2;
  }
  else{
    msg = "wrong id/pw :(";
  }

%>

<script>
  alert('<%=msg%>');
  if(<%=ok==1%>)location.href='../admin/list';
  else if(<%=ok==2%>)location.href='../user';
  else history.back();
</script>

</body>
</html>
