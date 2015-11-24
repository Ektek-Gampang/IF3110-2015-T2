<%--
  Created by IntelliJ IDEA.
  User: Marco Orlando
  Date: 11/17/2015
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style.css">
  <title> Simple StackExchange</title>
  <script type = "text/javascript" src="validatorInputQuestionAnswer.js"></script>
</head>

<body>
<div id="container">
  <div id="header">
    <span id="Judul">StackExchange</span>
  </div>

  <div id="body">
    <div id="questionAndAnswer">
           <jsp:include page="questionAnswerPage_Q.jsp" flush ="true"/>
           <jsp:include page="questionAnswerPage_A.jsp" flush ="true"/>  
    </div>


    <div id="yourAnswer">   


      <span id="yourAnswerWord">Your Answer</span>
      <div id="answerForm">
        <form name="myForm" action="" method="post">
          <input type="text" name="name" placeholder="Name"><br>
          <input type="text" name="email" placeholder="Email"><br>
          <textarea name="questionContent" placeholder="Content"></textarea><br>
          <div id="submitter">
            <input type="submit" value="Post">
          </div>
        </form>
      </div>
    </div>
  </div>

</div>
</body>



</html>
