
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet"  href="/css/external.css"/>
        <title>All Trainers</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <h1 style="text-align:center">ALL Trainers</h1>
        <table border="1" align="center" style="background-color:white;width:100%;color:black;">
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>SURNAME</td>
                <td>AGE</td>
                <td>UPDATE</td>
                <td>DELETE</td>
            </tr>
            <c:forEach items="${listtrainers}" var="t">
                <tr>
                <td>${t.id}</td>
                <td>${t.name}</td>
                <td>${t.surname}</td>
                <td>${t.age}</td>
                <td><a href="preupdatetrainer?id=${t.id}">Update</td>
                <td><a href="alltrainers?id=${t.id}">Delete</a></td>
            </tr>  
            </c:forEach>
        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
