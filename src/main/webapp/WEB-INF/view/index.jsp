<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Private Page</title>
    <%-- Bootstrap css --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <sec:authorize access="isAnonymous()">
        <div>
            <h2>Authenitcate</h2>
            <form action="/login" method="post">
                Username: <input type="text" name="username">
                Password: <input type="password" name="password">
                <input type="submit" value="login">
                <sec:csrfInput/>
            </form>
        </div>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <jsp:include page="menu.jsp"/>
    </sec:authorize>


    <h3>Welcome to our test app</h3>
    <p>Your are nothing yet</p>
</div>
<%-- Load JS libraries --%>
<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
</body>
</html>
