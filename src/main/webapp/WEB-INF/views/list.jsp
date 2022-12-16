<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>GLOVE/admin</title>
  <link rel="stylesheet" href="boot.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script>
      function delete_ok(id) {
          var a = confirm("정말로 삭제하겠습니까?");
          if (a) location.href = 'delete/' + id;
      }
  </script>
</head>


<body style="background-color: black;">

	<div class="container-xl" style="margin-top: 20px">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-6">
							<h1 style="color: white;"><b>Product</b> List</h1>
						</div>
						<div class="col-sm-6" id="primeButton" style="right: 0">
							<a href="add" class="btn" style="color: white; background-color: green; height: 50px; font-size: 120%; font-weight: bold; text-align: center; margin: 10px;">
								Add New Product
							</a>
						</div>
					</div>
				</div>

				<table id="list" class="table table-striped table-hover" style="background-color: white;">
					<thead style="color: green;">
						<tr>
							<!--product case-->
<%--							<th>PID</th>--%>
<%--							<th>productIMG</th>--%>
<%--							<th>brand</th>--%>
<%--							<th>productName</th>--%>
<%--							<th>details</th>--%>
<%--							<th>edit</th>--%>


							<!--board case-->
							<th>Brand</th>
							<th>Product</th>
							<th>Price</th>
							<th>Img</th>
							<th>Info</th>
							<th>Edit</th>


						</tr>
					</thead>

						<!-- this is test td-->
						<tr>
							<!--product case-->
<%--							<td>0</td>--%>
<%--							<td><img src="https://ae01.alicdn.com/kf/H60931361587e45e9bda4033f1519752bl/meme-t-shirt-dank-meme-meme.jpg_640x640.jpg" width="50"></td>--%>
<%--							<td>test brand</td>--%>
<%--							<td>test product name</td>--%>
<%--							<td>this is test product. this red t-shirts is really cute and I like it :)</td>--%>
<%--							<td>--%>
<%--								<a href="edit/0" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>--%>
<%--								<a href="javascript:delete_ok('0')" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
<%--							</td>--%>
						</tr>

					<c:forEach items="${list}" var="u">

						<!--product case-->
<%--						<tr>--%>
<%--							<td>${u.getPID()}</td>--%>
<%--              				<td><img src="./upload/${u.getProductIMG()}" width="50"></td>--%>
<%--							<td>${u.getBrand()}</td>--%>
<%--							<td>${u.getPname()}</td>--%>
<%--							<td>${u.getDetails()}</td>--%>
<%--							<td>--%>
<%--								<a href="edit/${u.PID}" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>--%>
<%--								<a href="javascript:delete_ok('${u.PID}')" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
<%--							</td>--%>
<%--						</tr>--%>

						<!--board case-->
						<tr>
							<td>${u.getBrand()}</td>
							<td>${u.getProduct()}</td>
							<td>${u.getPrice()}</td>
							<td>${u.getImg()}</td>
							<td>${u.getInfo()}</td>
							<td>
								<a href="edit/${u.seq}" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
								<a href="javascript:delete_ok('${u.seq}')" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
							</td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<br />
	<button type = "button" id="button2" onclick="location.href='../'" style="background-color: black; color: white; text-align: center;"><U> Logout </U></button><br>
</body>
