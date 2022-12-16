<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>GLOVE/productList</title>
    <link rel="stylesheet" href="boot.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <%--							<th>view</th>--%>

                    <th>Img</th>
                    <th>Brand</th>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Info</th>


                </tr>
                </thead>

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

                    <tr>
                        <td>${u.getImg()}</td>
                        <td><img src="../../resources/img/${u.getProductIMG()}" width="50"></td>
                        <td>${u.getProduct()}</td>
                        <td>${u.getPrice()}</td>
                        <td>${u.getInfo()}</td>
                        <td>
                            <a href="../view/${u.seq}" class="view">View</a>
                        </td>
                    </tr>

                </c:forEach>
            </table>
        </div>
    </div>
</div>
<br />

</body>
