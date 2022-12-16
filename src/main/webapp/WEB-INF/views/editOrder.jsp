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
        <form:hidden path="pid"></form:hidden>
        <table id="edit">
            <tr><td>user name:</td><td><form:input path="uname" /></td></tr>
            <tr><td>phone number: </td><td><form:input path="pnum"/></td></tr>
            <tr><td>Content:</td><td><form:textarea cols="21" rows="5" path="address"/></td></tr>
            <tr><td>Current size: </td><td><form:input path="size"/></td></tr>
            <tr>
                <!----라디오는 어케하죠??? ---->
                <td>
                    <label for="size_XS">XS</label>
                    <input type="radio" id="size_XS" name="size" value="XS">
                </td>
                <td>
                    <label for="size_S">S</label>
                    <input type="radio" id="size_S" name="size" value="S">
                </td>
                <td>
                    <label for="size_M">M</label>
                    <input type="radio" id="size_M" name="size" value="M">
                </td>
                <td>
                    <label for="size_L">L</label>
                    <input type="radio" id="size_L" name="size" value="L">
                </td>
                <td>
                    <label for="size_XL">XL</label>
                    <input type="radio" id="size_XL" name="size" value="XL">
                </td>
            </tr>
            <tr><td>count</td><td><form:input type="number" id="count" name="count" min="1" max="20"  path="count"></form:input></td></tr>
        </table>
        <input type="submit" value="Edit post" />
        <input type="button" value="Back" onclick="history.back()" />
    </form:form>


</div>
</body>
</html>