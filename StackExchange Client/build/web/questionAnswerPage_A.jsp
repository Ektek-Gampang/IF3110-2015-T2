<%-- 
    Document   : questionAnswerPage_A
    Created on : Nov 24, 2015, 9:48:38 AM
    Author     : Marco Orlando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%-- start web service invocation --%>
    <%-- start web service invocation --%>
    <%

	wsmodel.WS_Service service = new wsmodel.WS_Service();
	wsmodel.WS port = service.getWSPort();
	 // TODO initialize WS operation arguments here
	int questionId = Integer.parseInt(request.getParameter("q_id"));
	// TODO process result here
	java.util.List<wsmodel.AnswerClass> answerList = port.getAnswerByQID(questionId);
	int answerNumber = answerList.size();
    %>
    <%-- end web service invocation --%>



    
    
    <%-- PRINT OUT ANSWER OF QUESTION --%>
    <% for (int i = 0; i < answerNumber; i++) { 
%>
     <div class='answerItem''>
    <div class ='questionAnswerBody'>
        <div class ='questionAnswerVote'>
            <div class='questionAnswerVoteUpArrow'>
                <a href='voteUpAnswer.jsp?a_id=<%=answerList.get(i).getAnswerId()%>&q_id="<%=questionId%>'><img src='icons/upArrow.png' width='30' height='30'></a> 
            </div>
            <div class='questionAnswerVoteNumber' <%--id='voteAnswer$answerId'--%>>
                <% out.println(answerList.get(i).getAnswerVote()) ;%>
            </div>
            <div class='questionAnswerVoteDownArrow'>
                <a href='voteDownAnswer.jsp?a_id=<%=answerList.get(i).getAnswerId()%>&q_id=<%=questionId%>'><img src='icons/downArrow.png' width='30' height='30'></a> 
            </div>
        </div>
        <div class ='questionAnswerContent'>
            <% out.println(answerList.get(i).getAnswerContent()) ;%>
        </div>
    </div>
            <%-- start web service invocation --%>
    <%
	wsmodel.WS_Service service1 = new wsmodel.WS_Service();
	wsmodel.WS port1 = service1.getWSPort();
	 // TODO initialize WS operation arguments here
	int userID = answerList.get(i).getAnswerId();
	// TODO process result here
	java.lang.String userName = port1.getAnswerUserName(userID);

    %>
    <%-- end web service invocation --%>

   
    <span class='questionAnswerFooter'>answered by <% out.println(userName) ;%> at <% out.println(answerList.get(i).getAnswerDate()) ;%> </span>
     </div>
     
     <% } %>
