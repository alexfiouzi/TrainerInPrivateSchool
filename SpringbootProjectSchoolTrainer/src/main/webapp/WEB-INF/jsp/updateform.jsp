
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
       
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet"  href="/css/external.css"/>
        <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainer</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
         <div class="container bg-light">
            <springform:form action="doupdatetrainer" method="post" modelAttribute="updatetrainer">
                                <h3>Update Trainer</h3>
                                <hr>
                                <div class="form-group">
                                    <springform:input type="hidden" path="id"/>
                                </div>
                        <div class="form-group">
                            <label for="name">Firstname</label>
                            <springform:input path="name" cssClass="form-control" id="name" placeholder="trainer's firstname" pattern="[A-Za-z ]{1,}" required="true" aria-describedby="pwdhelp"/>
                            <springform:errors path="name" cssClass="error"/>
                            <small id="pwdhelp" class="form-text text-muted">Warning use only letters</small>
                        </div>
                        <div class="form-group">
                            <label for="surname">Lastname</label>
                            <springform:input path="surname" cssClass="form-control" id="surname" placeholder="trainer's lastname" pattern="[A-Za-z ]{1,}" required="true" aria-describedby="pwdhelp1"/>
                            <springform:errors path="surname" cssClass="error"/>
                            <small id="pwdhelp1" class="form-text text-muted">Warning use only letters</small>
                        </div>
                        <div class="form-group">
                            <label for="age">Age</label>
                                                        
                            <springform:input type="number" path="age" cssClass="form-control" id="age" placeholder="trainer's age" required="true" aria-describedby="pwdhelp1"/>
                         <springform:errors path="age" cssClass="error"/>
                         <small id="pwdhelp2" class="form-text text-muted">Warning use only Numbers</small>
                        </div>
                        <input type="submit" name=”submit” value="Update Trainer">  <input type="reset" name=”reset” value=Reset>
                        </springform:form>
                    </div>
        <%@include file="footer.jsp" %>
        
    </body>
</html>
