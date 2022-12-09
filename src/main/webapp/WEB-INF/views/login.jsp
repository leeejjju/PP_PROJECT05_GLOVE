
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
          
          margin-bottom: 50px;
      }

      .main{
        border: 1px solid white;
        padding: 50px;
        margin: 10%;
        display: flex;
        justify-content: center;
        text-align: center;
      }

      table{
        color: white;
      }

      spin{
        font-size: 15px;
        color: gray;
      }

      #submit{
        margin: 5px; 
        width: 60%; 
        height: 30px; 
        background-color: green; 
        color:white; 
        font-style: bold;
      }
      #back{
        width: 30%;
        height: 30px; 
        background-color: rgb(66, 66, 66); 
        color:white; 
        font-style: bold;
      }

  
  
  </style>

</head>
<body>

  <div class="header">
    <img src="img/logo.jpg" width="80px">
    <h1 style="color: white;">GLOVE <br><spin>:admin login</spin></h2>
  </div>

  <div class="main">
    <form id="LoginForm" >
      
      <table>
        <tr>
          <td>ID</td>
          <td><input type="text"></td>
        </tr>
        <tr>
          <td>PW</td>
          <td><input type="password"></td>
        </tr>
      </table>
      <button id="back" onclick="history.back()">Back</button>
      <input id="submit" type="submit" value="Login">
      
    </form>
  </div>

  


  



</body>
</html>
