<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 02/20/2021
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"  %>
<div class="container">
    <%
        String email = null;
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("email")) email = cookie.getValue();
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
        }
    %>
    <%
//        String email = request.getParameter("email");
    %>
    <h1 class="display-4">Home page</h1>
    <h4>Hello!</h4>
    <h4>Email: <%=email%> was successfully logged in.</h4>
    <h4>Session ID: <%=sessionID%></h4>
</div>
<%@ include file="footer.jsp"  %>
