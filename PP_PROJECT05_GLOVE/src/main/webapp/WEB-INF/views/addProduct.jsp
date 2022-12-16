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

        <!--product case
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
        -->

        <!--board case-->
        <form action="addok" method="post">
            <table>
                <tr>
                    <td>brand</td>
                    <td>
                        <select name="brand">
                            <option value="brand1">Brand1</option>
                            <option value="brand2">Brand2</option>
                            <option value="brand3">Brand3</option>
                            <option value="brand4">Brand4</option>
                            <option value="brand5">Brand5</option>
                        </select>
                    </td>
                </tr>
                <tr><td>product</td><td><input type="text" name="product"></td></tr>
                <tr><td>price</td><td><input type="text" name="price"></td></tr>
                <tr><td>img</td><td><input type="file" name="img" accept="image/png, image/jpeg"></td></tr>
                <tr><td>info</td><td><textarea type="textarea" name="info" clos="20" rows="5"></textarea></td></tr>
                <tr>
                    <td><button type="button" onclick="location.href='list'" >back</button></td>
                    <td><button type="submit"/>Add product</td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>