<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<title>GLOVE</title>

<style>
    body{
        display: block;
        background-color: black;
        margin: 10%;
    }

    div{
        justify-content: center;
        text-align: center;
    }

    .header{
        margin-bottom: 70px;
    }

    .content{
        display: block;

    }

    #goto{
        background-color: rgb(39, 107, 14);
        width: 40%;
        height: 80px;
        font-size: larger;
        font-style: italic;
        color: white;
        margin: 20px;
    }

    a{
        display: block;
        color: gray;
    }

    spin{
        font-size: 15px;
        color: gray;
    }



</style>
<body>

    <div class="header">
        <img src="img/logo.jpg" width="80px">
        <h1 style="color: white;">GLOVE<br><spin>server time: ${serverTime}</spin></h1>
    </div>

    <div class="content">
        <button id="goto" onclick="location.href='user'">Go to grab something!</button>
        <a href="login">admin login</a>
    </div>

</body>
</html>
