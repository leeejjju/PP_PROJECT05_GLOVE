<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GLOVE/editP</title>
</head>

<body style="justify-content: center">

    <div style="border: 2px solid darkolivegreen; padding: 20px; margin: 30px; width: 40%; display: block">
        <h1>Edit Product</h1>

        <form method="POST" enctype="multipart/form-data">
          <hidden path="pid"/>
          <table>
              <tr><td>brand</td><td>
                  Nike<input type="radio" name="brand" value="Nike" style="margin: 5px" >
                  Yail<input type="radio" name="brand" value="Yail" style="margin: 5px;">
                  Lee<input type="radio" name="brand" value="Lee" style="margin: 5px;" >
              </td></tr>
              <tr>
                  <td>Product name</td>
                  <td><input type="text" name="pname"></input></td>
              </tr>
              <tr>
                <td>details</td>
                  <td><textarea type="textarea" name="details" cols="20"></textarea></td>
              </tr>
              <tr>
                  <td>productIMG</td>
                  <td><input type="file" name="productIMG"></input></td>
              </tr>
              <tr>
                <td><input type="button" value="Back" onclick="history.back()" /></td>
                <td><input type="submit" value="Add User"/></td>
              </tr>
            </table>
        </form>

<%--        <form:form modelAttribute="productVO" method="POST" action="../p_editok" enctype="multipart/form-data">--%>
<%--          <form:hidden path="pid"/>    --%>
<%--          <table id="edit_p">--%>
<%--            <!--이거 자동선택..?어케 되게 하지..?-->--%>
<%--              <tr><td>brand</td><td>--%>
<%--                  Nike<form:input type="radio" name="brand" value="Nike" style="margin: 5px" path="brand1"></form:input>--%>
<%--                  Yail<form:input type="radio" name="brand" value="Yail" style="margin: 5px;" path="brand2"></form:input>--%>
<%--                  Lee<form:input type="radio" name="brand" value="Lee" style="margin: 5px;" path="brand3"></form:input>--%>
<%--              </td></tr>--%>
<%--              <tr>--%>
<%--                  <td>Product name</td>--%>
<%--                  <td><form:input path="pname" type="text" name="pname" autofocus="autofocus"></form:input></td>--%>
<%--              </tr>--%>
<%--              <tr>--%>
<%--                <td>details</td>--%>
<%--                  <td><form:textarea type="textarea" path="details" name="details" cols="20"></form:textarea></td>--%>
<%--              </tr>--%>
<%--              <tr>--%>
<%--                  <td>productIMG</td>--%>
<%--                  <td><form:input type="file" path="productIMG" name="productIMG"></form:input></td>--%>
<%--              </tr>--%>
<%--              <tr>--%>
<%--                <td><input type="button" value="Back" onclick="history.back()" /></td>--%>
<%--                <td><input type="submit" value="Add User"/></td>--%>
<%--              </tr>--%>
<%--            </table>--%>
<%--        </form:form>--%>
    </div>
</body>
</html>