<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GLOVE/view</title>
</head>
<body>

<form:form modelAttribute="productVO" method="POST" action="../order" >

    <form:input path="title" readonly="true" cssStyle="font-size: large; font-weight: bold; border: none; margin-top: 20px"/>

    <br><br>
    <form:hidden path="seq" />
    <table id="view">
        <tr>Writer: <form:input path="writer" readonly="true"/></tr>
        <tr><td><form:textarea cols="50" rows="10" path="content" readonly="true"/></td></tr>
    </table>
    <br>

    <input type="button" value="Back" onclick="history.back()" />
    <input type="submit" value="Purchase" onclick="Location.href='user/order/add/${u.seq}'" />

</form:form>


</body>
</html>