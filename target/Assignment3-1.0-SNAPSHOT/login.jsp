<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 02/20/2021
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"  %>
<div class="container">
    <h1 class="display-4">Login page</h1>
    <form action="login" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="text" name="email" class="form-control" id="exampleInputEmail1" placeholder="email@example.com">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword" placeholder="password">
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    <br/>
</div>
<%@ include file="footer.jsp"  %>
