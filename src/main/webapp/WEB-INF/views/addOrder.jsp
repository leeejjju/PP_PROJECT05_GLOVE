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

        <!--board case-->
        <form action="addok" method="post">
            <table>
                <form:hidden path="pid"></form:hidden>
                <tr><td>title</td><td><input type="text" name="title"></td></tr>
                <tr><td>writer</td><td><input type="text" name="writer"></td></tr>
                <tr><td>content</td><td><textarea type="textarea" name="content" cols=20 rows=5></textarea></td></tr>
                <tr>
                    <td><button type="button" onclick="location.href='list'" >back</button></td>
                    <td><button type="submit"/>Add product</td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>