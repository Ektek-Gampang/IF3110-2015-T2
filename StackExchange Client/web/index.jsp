<%--
  Created by IntelliJ IDEA.
  User: Marco Orlando
  Date: 11/17/2015
  Time: 10:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style.css">
  <title>Simple StackExchange</title>
</head>

<body>
  <div id = "container">
    <div id = "header">
      <p>${flash}</p>
      <span id="Judul">Simple StackExchange</span>
      <form id="search" action ="index.php" method="get">
        <input name = 'search' id="bar" type="text"/>
        <input id="submitButton" type="submit" value="Search"/>
    </div>
    <p align="center">Cannot find what you are looking for? <a style="color:red" href="addQuestion.jsp">Ask here</a>
    <div id ="body">
      <h3>Recently Asked Questions</h3>
    <%-- start web service invocation --%><hr/>
            <%
                wsmodel.WS_Service service = new wsmodel.WS_Service();
                wsmodel.WS port = service.getWSPort();
                // TODO process result here
                java.util.List<wsmodel.QuestionClass> allQuestionList = port.getAllQuestion();	
                int allQuestionNumber = allQuestionList.size();
            
            %>
    <%-- end web service invocation --%><hr/>
    
    <% for (int i = 0; i< allQuestionNumber;i++){ %>
    		<div class = 'questionItem'>
                        <div class = questionLeft>
                            <span class = 'votes_number'> <% out.println(allQuestionList.get(i).getQuestionVote()); %> <br>Votes</span>
                            <span class = 'Answers_number'>  <br>Answers</span>
                        </div>

                        <div class= questionMid>
                            <a class ='questionTitle' href='questionAnswerPage.jsp?q_id=<%= allQuestionList.get(i).getQuestionId()%>'><% out.println(allQuestionList.get(i).getQuestionTitle()); %> <br></a>
                            <div class =questionContent>
                                <%
                                        String str = allQuestionList.get(i).getQuestionContent();
		  			if(str.length() < 180) {
		  				out.println (allQuestionList.get(i).getQuestionContent());
		  			} else {
		  				out.println (str.substring(0, 180)+"...");
		  			}
                                %>
                             </div>
                        </div>

                        <div class= questionRight>
                            asked by <font color='blue'> <% out.println(allQuestionList.get(i).getQuestionUserId()); %> </font> |<a class='editQuestion' href='editQuestion.jsp?id=<%= allQuestionList.get(i).getQuestionId() %>'><font color='green'>edit</font> </a>|<a class='deleteQuestion' href = 'deleteQuestionProcess.jsp?id=<%= allQuestionList.get(i).getQuestionId() %> onclick= \"return confirm('Confirm Delete?');\'><font color='red'>delete</font> </a>
                        </div>

                </div>
    <% } %>                   
    </div>

  </div>



</body>
</html>
