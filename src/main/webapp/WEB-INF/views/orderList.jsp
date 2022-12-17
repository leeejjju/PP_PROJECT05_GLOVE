<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>GLOVE/order</title>
    <link rel="stylesheet" href="boot.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 취소하겠습니까?");
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
                        <h1 style="color: white;"><b>Order</b> List</h1>
                    </div>
                </div>
            </div>

            <table id="list" class="table table-striped table-hover" style="background-color: white;">
                <thead style="color: green;">
                <tr>
                    <!--order case-->
                    <th>order id</th>
                    <th>preview</th>
                    <th>Product name</th>
                    <th>Size</th>
                    <th>Count</th>
                    <th>Address</th>
                    <th>order date</th>
                    <th>edit</th>


                </tr>
                </thead>


                <c:forEach items="${list}" var="u">

                    <!--order case-->
                    <tr>
                        <td>${u.getOid()}</td>
                        <td>${u.getImg()}</td>
                        <td>${u.getProduct()}</td>
                        <td>${u.getSize()}</td>
                        <td>${u.getCount()}</td>
                        <td>${u.getAddress()}</td>
                        <td>${u.getRegdate()}</td>
                        <td>
                            <a href="edit/${u.oid}" class="edit" style="text-underline: deepskyblue">주문 정보 수정</a>
                            <br>
                            <a href="javascript:delete_ok('${u.oid}')" class="delete" style="text-underline: deepskyblue">주문 취소</a>
                        </td>
                    </tr>


                </c:forEach>
            </table>
        </div>
    </div>
    <br />
    <button class="back" onclick="history.back()"> Back to User Home </button>
</div>
<br />

</body>
