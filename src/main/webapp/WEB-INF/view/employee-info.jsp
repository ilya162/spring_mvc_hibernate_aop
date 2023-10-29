<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>employee-info</title>
</head>
<body>
<div class="container">
    <h2>Employee Info</h2>
    <br><br>
    <%--@elvariable id="employee" type=""--%>
    <form:form action="saveEmployee" modelAttribute="employee">
        <form:hidden path="id"/>
        Name<form:input class="form-control" path="name"/>
        <br><br>
        Surname<form:input class="form-control" path="surname"/>
        <br><br>
        Department<form:input class="form-control" path="department"/>
        <br><br>
        Salary<form:input class="form-control" path="salary"/>
        <br><br>
        <input type="submit" class="btn btn-primary" value="OK">

    </form:form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
