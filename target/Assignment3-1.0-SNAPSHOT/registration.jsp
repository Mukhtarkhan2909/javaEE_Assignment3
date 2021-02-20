<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 02/20/2021
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"  %>
<div class="container">
    <h1 class="display-4">Registration page</h1>
    <form action="registration" method="post">
        <div class="mb-3">
            <label for="exampleInputFirstName" class="form-label">First Name</label>
            <input type="text" name="first_name" class="form-control" id="exampleInputFirstName">
        </div>
        <div class="mb-3">
            <label for="exampleInputLastName" class="form-label">Last Name</label>
            <input type="text" name="last_name" class="form-control" id="exampleInputLastName">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="email@example.com">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" name="password1" class="form-control" id="exampleInputPassword1">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword2" class="form-label">Confirm Password</label>
            <input type="password" name="password2" class="form-control" id="exampleInputPassword2">
        </div>
        <div class="mb-3">
            <label for="exampleInputAddress" class="form-label">Address</label>
            <input type="text" name="address" class="form-control" id="exampleInputAddress">
        </div>
        <div class="mb-3">
            <label for="exampleInputContact" class="form-label">Contact Number</label>
            <input type="text" name="contact" class="form-control" id="exampleInputContact">
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>
<%@ include file="footer.jsp"  %>
