<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GLOVE/addO</title>

</head>

<body style="justify-content: center">

    <div style="border: 2px solid darkolivegreen; padding: 20px; margin: 30px; width: 40%; display: block">
        <h1>Order information</h1>

        <!--order case-->
        <form action="addok" method="post">
            <table>
                <form:hidden path="pid"></form:hidden>
                <tr><td>userName</td><td><input type="text" name="userName"></td></tr>
                <tr><td>address</td><td><input type="text" name="address"></td></tr>
                <tr><td>brand</td><td><input type="text" name="brand"></td></tr>
                <tr><td>productNumber</td><td><input type="text" name="productNumber"></td></tr>
                <tr><td>count</td><td><input type="number" id="count" name="count" min="1" max="20"></td></tr>
                <tr>
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
                <tr>
                    <td><button type="button" onclick="location.href='list'" >back</button></td>
                    <td><button type="submit"/>Add product</td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>