
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet"  href="/css/external.css"/>
        <title>School</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
          <div class="container-fluid">
                             <h1 class="text-center">Welcome to Private School</h1>
                            <div class="carousel slide" id="mycarousel" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#mycarousel" data-slide-to="0"></li>
                                    <li data-target="#mycarousel" data-slide-to="1" class="active"></li>
                                    <li data-target="#mycarousel" data-slide-to="2"></li>
                                    <li data-target="#mycarousel" data-slide-to="3"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTW67TlyGsEL_rSSm7uYxxwkEVycWIeSFWzys5UV_Wyeyqm3mH0&usqp=CAU" class="d-block w-100 rounded" alt="slide1">
                                    </div>
                                    <div class="carousel-item active">
                                        <img src="https://images.fmctraining.com/images/dc-classroom.png" class="d-block w-100 rounded" alt="slide2">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://imacrosystems.com/attachments/Slider/71234d9c-cc8c-f108-9f64-9c72868ead5b/SCRIPT.jpg?template=generic" class="d-block w-100" alt="slide3">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://www.marj3.com/wp-content/uploads/2020/05/the-center-of-campus-near-the-recreational-center-and-university-center-1-1000x400.jpg" class="d-block w-100" alt="slide4">
                                    </div>
                                    <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                    <span class="sr-only">Previous</span>
                               </a> 
                               <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                                <span class="sr-only">Next</span>
                           </a> 
                                </div>
                                </div>
                                 <div class="accordion" id="accord1">
                                <div class="card bordered" style="background-color:red;">
                                    <div class="card-header" id="header1">
                                        <button class="brn btn-link" type="button" data-target="#text1" data-toggle="collapse" aria-control="#text1">
                                            Discount 30%
                                        </button>
                                                        
                                    </div>
                                    <div class="collapse" id="text1" data-parent="#accord1" aria-labelledby="#header1">
                                        <div class="card-body">
                                            <div class="display-4">Special offer 30% for the unemployed and people with more than 2 children</div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                <div class="accordion" id="accord2">
                                <div class="card bordered" style="background-color:blue;" >
                                    <div class="card-header" id="header2">
                                        <button class="brn btn-link" type="button" data-target="#text2" data-toggle="collapse" aria-control="#text2">
                                             Discount 10%
                                        </button>                                                        
                                    </div>
                                    <div class="collapse" id="text2" data-parent="#accord2" aria-labelledby="#header2">
                                        <div class="card-body">
                                            <div class="display-4">Discount 10% for those that will pay the full amount of their fees at the first two weeks of course</div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                           <div>
        <footer id="sticky-bottom" class="py-4 bg-dark text-white-40">
          <div class="container text-center">
          <small style="color:white">Copyright &copy; Private School</small>
           </div>
        </footer>
       </div>
          </div>
          
    </body>
</html>
