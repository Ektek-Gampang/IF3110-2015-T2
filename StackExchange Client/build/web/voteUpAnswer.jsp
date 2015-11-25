<%-- 
    Document   : voteUpAnswer
    Created on : Nov 25, 2015, 5:41:14 AM
    Author     : Marco Orlando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Vote up answer</h1>
        
        
            <%-- start web service invocation --%>
    <%
	wsmodel.WS_Service service = new wsmodel.WS_Service();
	wsmodel.WS port = service.getWSPort();
	 // TODO initialize WS operation arguments here
	int answerId = Integer.parseInt(request.getParameter("a_id"));
	int questionId = Integer.parseInt(request.getParameter("q_id"));
	int userID = 999;
	// TODO process result here
	java.lang.Boolean result = port.voteUpAnswer(answerId, questionId, userID);

    %>
    <%-- end web service invocation --%>
    String site = new String("questionAnswerPage.jsp?q_id="<%=questionId%>);
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
     
    </body>
</html>