<%-- 
    Document   : voteDownQuestion
    Created on : Nov 25, 2015, 5:40:54 AM
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
        <h1>Vote down question</h1>
        
            <%-- start web service invocation --%>
    <%

	wsmodel.WS_Service service = new wsmodel.WS_Service();
	wsmodel.WS port = service.getWSPort();
	 // TODO initialize WS operation arguments here
	int questionId = Integer.parseInt(request.getParameter("q_id"));
	int userID = 999;
	// TODO process result here
	java.lang.Boolean result = port.voteDownQuestion(questionId, userID);

    %>
      String site = new String("questionAnswerPage.jsp?q_id="<%=questionId%>);
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
    <%-- end web service invocation --%><hr/>

        
        
        
    </body>
</html>