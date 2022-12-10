
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GLOVE/login</title>

    <style>
      body{
          display: block;
          background-color: black;
      }
  
      div{
          justify-content: center;
          text-align: center;
      }
  
      .header{
          margin-top: 80px;
          margin-bottom: 60px;
      }

      .main{
        display: flex;
        border: 1px solid white;
        padding: 50px;
        margin-left: 10%;
        margin-right: 10%;
        justify-content: center;
        text-align: center;
      }

      table{
        color: white;
      }

      form{
        display: block;
      }

      spin{
        font-size: 15px;
        color: gray;
      }

      #submit{
        margin: 5px; 
        width: 70%;
        height: 30px; 
        background-color: green; 
        color:white; 
        font-weight: bold;
      }
      #back{
        margin: 10px;
        display: block;
        height: 30px; 
        background-color: black;
        color:gray;
        text-underline: gray;
        font-weight: bold;
      }

  
  
  </style>

  <script>
    function back(){
      history.back()
    }
  </script>

</head>
<body>

  <div class="header">
    <img src="img/logo.jpg" width="80px">
    <h1 style="color: white;">GLOVE <br><spin>:admin login</spin></h1>
  </div>
  </div>

  <div class="main">
    <form action="login/check" method="post" id="LoginForm">
      <table>
        <tr>
          <td>ID</td>
          <td><input type="text" name="id"></td>
        </tr>
        <tr>
          <td>PW</td>
          <td><input type="password" name="pw"></td>
        </tr>
      </table>
      <input id="submit" type="submit" value="Login">
    </form>

  </div>
  <div style="display: flex; justify-content: center">
    <button id="back" onclick="history.back()">Back</button>
  </div>

</body>
</html>
