<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GLOVE/addP</title>

</head>

<body style="justify-content: center">

    <div style="border: 2px solid darkolivegreen; padding: 20px; margin: 30px; width: 40%; display: block">
        <h1>Add New Product</h1>
        <form action="p_addok" method="post" enctype="multipart/form-data">
            <table>
              <tr><td>brand</td><td>
                Nike<input type="radio" name="brand" value="Nike" checked style="margin: 5px">
                Yail<input type="radio" name="brand" value="Yail" style="margin: 5px;">
                Lee<input type="radio" name="brand" value="Lee" style="margin: 5px;">
              </td></tr>
              <tr><td>Product name</td><td><input type="text" name="pname" autofocus="autofocus" required></td></tr>
              <tr>
                <td>details</td>
                <td><textarea type="textarea" name="details" cols=20 rows=5 required></textarea></td>
              </tr>
              <tr><td>productIMG</td><td><input type="file" name="productIMG"></td></tr>
              <tr>
                <td><a href="posts.jsp">back to list</a></td>
                <td><input type="submit" value="Add User"/></td>
              </tr>
            </table>
        </form>
    </div>
</body>

</html>