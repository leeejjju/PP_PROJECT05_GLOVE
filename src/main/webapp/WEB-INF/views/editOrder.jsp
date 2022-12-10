<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GLOVE/editO</title>
</head>

<body style="justify-content: center">

<div style="border: 2px solid darkolivegreen; padding: 20px; margin: 30px; width: 40%; display: block">
    <h1>Edit Order information</h1>

    <!--board case-->
    <form:form modelAttribute="orderVO" method="POST" action="../editok" >
        <form:hidden path="seq"/>
        <table id="edit">
            <tr><td>Title:</td><td><form:input path="title"/></td></tr>
            <tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
            <tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
        </table>
        <input type="submit" value="Edit post" />
        <input type="button" value="Back" onclick="history.back()" />
    </form:form>

    <!--order case-->

</div>
</body>
</html>