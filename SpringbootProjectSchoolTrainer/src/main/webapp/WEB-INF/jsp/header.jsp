
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container-fluid">

        <nav class="my-3 navbar sticky-top navbar-expand-md navbar-light bg-light">
            <a href="/" class="navbar-brand">
                <img src="https://image.flaticon.com/icons/svg/2416/2416532.svg"
                width="30" height="30" class="d-inline-block align-top" alt="brand icon"/>
            Private School</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-control="navbar1"
            data-target="#navbar1" aria-label="toggle here" aria-expanded="false">
        <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbar1">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="/" class="nav-link">Home</a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a href="" class="nav-link dropdown-toggle" id="dropdown3"
                        data-toggle="dropdown" >Trainer</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/preinserttrainer">Add Trainer</a>
                            <a class="dropdown-item" href="/showtrainers">Update/DeleteTrainer</a>                            
                            </div>
                    </li>                    
             </ul>
           </div>
       </nav>
         </div>
    </body>
</html>
