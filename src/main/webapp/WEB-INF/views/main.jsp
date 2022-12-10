<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<title>GLOVE</title>

<style>
    body{
        background-color: black;
        margin: 10%;
    }

    div{
        justify-content: center;
        text-align: center;
    }

    .header{
        margin-bottom: 30px;
        display: flex;
    }

    .main{
        display: flex;
        border: 1px solid white;
        padding: 50px;
        margin-left: 10%;
        margin-right: 10%;
        text-align: center;
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

    table{
      color: white;
      margin: 20px;
    }

    .p{
      color: white;
      margin: 20px;
      text-align: left;
    }

    td{
     border: 1px solid gray;
     padding: 20px;
    }

    .brandBtn{
      height: 100%;
      width: 100%;
      color: white;
      background-color: green;
    }


    #back{
        margin: 10px;
        display: block;
        height: 30px; 
        background-color: black;
        color:gray;
        text-decoration: underline solid gray;
        font-style: italic;
    }

    
</style>
<body>

    <div class="header">
        <img src="img/logo.jpg" width="40px" style="margin: 20px;">
        <h1 style="color: white;">GLOVE</h1>
    </div>

    <div class="main">

      <h2 class="p">Select <br>your <br>brand</h2>

      <hr>

      <table>
        <tr>
          <td><button src = "https://assets.petco.com/petco/image/upload/c_pad,dpr_1.0,f_auto,q_auto,h_636,w_636/c_pad,h_636,w_636/135690-Center-2" class="brandBtn" onclick="location.href='user/list/brand1'">Brand1</button></td>
          <td><button class="brandBtn" onclick="location.href='user/list/brand2'">Brand2</button></td>
          <td><button class="brandBtn" onclick="location.href='user/list/brand3'">Brand3</button></td>
        </tr>
      </table>

    </div>

    <div style="display: flex; justify-content: center">
      <button id="back" onclick="location.href='user/order/list'" style="color: white;">go to order list</button>
      <button id="back" onclick="history.back()">back to home</button>
    </div>

</body>
</html>
