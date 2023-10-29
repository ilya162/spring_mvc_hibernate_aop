<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>all-employees</title>
</head>
<body>
<div class="container">
    <h2>All Employees</h2>
    <table class="table table-success table-striped-columns">
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"></c:param>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"></c:param>
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>

                <td>
                    <input type="button" class="btn btn-primary" value="Update"
                           onclick="window.location.href='${updateButton}'">

                    <input type="button" class="btn btn-danger" value="Delete"
                           onclick="window.location.href='${deleteButton}'">
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <input type="button" class="btn btn-primary" value="Add"
           onclick="window.location.href='addNewEmployee'"/>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
