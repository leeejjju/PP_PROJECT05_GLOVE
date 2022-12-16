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

    <form:input path="product" readonly="true" cssStyle="font-size: large; font-weight: bold; border: none; margin-top: 20px"/>

    <br><br>
    <form:hidden path="seq" />
    <table id="view">
        <tr><td>Brand:</td><td><form:input path="brand" readonly="true"/></td></tr>
        <tr><td>Price:</td><td><form:input path="price" readonly="true"/></td></tr>
        <tr><td>Img</td><td><form:input path="img"  readonly="true"/></td></tr>
        <tr><td>Info</td><td><form:textarea cols="20" rows="5" path="info"  readonly="true"/></td></tr>
    </table>
    <br>

    <input type="button" value="Back" onclick="history.back()" />
    <input type="submit" value="Purchase" onclick="Location.href='user/order/add/${u.seq}'" />

</form:form>


</body>
</html>