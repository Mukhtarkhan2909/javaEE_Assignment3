<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 02/20/2021
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"  %>
<div class="container">
    <%
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email1 = request.getParameter("email");
        String password = request.getParameter("password1");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
    %>
    <h1 class="display-4">Main page</h1>
    <h4><%=first_name%> you have successfully registered.</h4>
    <h4>Your account information</h4>
    <table class="table">
        <tbody>
        <tr>
            <th scope="row">First Name</th>
            <td><%=first_name%></td>
        </tr>
        <tr>
            <th scope="row">Last Name</th>
            <td><%=last_name%></td>
        </tr>
        <tr>
            <th scope="row">Email</th>
            <td><%=email1%></td>
        </tr>
        <tr>
            <th scope="row">Password</th>
            <td><%=password%></td>
        </tr>
        <tr>
            <th scope="row">Address</th>
            <td><%=address%></td>
        </tr>
        <tr>
            <th scope="row">Contact number</th>
            <td><%=contact%></td>
        </tr>
        </tbody>
    </table>
<%--    <h4 class="display-8">Now you can login with your new account.</h4>--%>
<%--    <a class="btn btn-primary" href="login.jsp" role="button">Login</a>--%>
</div>
<%@ include file="footer.jsp"  %>
