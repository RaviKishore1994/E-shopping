<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
    </style>
</head>
<body>
<div class="container" height="50">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img  src="<c:url value='/resources/images/a.jpg'></c:url>" alt="first slide" width="100%">
                    <div class="container">
                       <!--  <div class="carousel-caption">
                            <h1>WELCOME TO THE BIKE STORE</h1>
                            <p>Here You Can Browse And Buy Bikes.Order Now For Your Amazing New Arrivals</p>
                        </div> -->
                    </div>
                </div>
                <div class="item">
                    <img src="<c:url value='/resources/images/h.jpg'></c:url>" alt="Second slide"  width="100%">
                    <div class="container">
                        <!-- <div class="carousel-caption">
                            <h1>The Bike store.</h1>
                            <p>online shopping can make your life more easier</p>
                        </div> -->
                    </div>
                </div>
                <div class="item">
                    <img class="img-bordered" src="<c:url value='/resources/images/c.jpg'></c:url>" alt="Third slide"  width="100%">
                    <div class="container">
                        <!-- <div class="carousel-caption">
                            <h1>The Bike You Love</h1>
                            <p>live Freely,Work Happily And Drive Safely!!</p>
                        </div> -->
                    </div>
                </div>
                 <div class="item">
                    <img class="img-thumbnail" src="<c:url value='/resources/images/d.jpg'></c:url>" alt="forth slide" width="100%">
                    <div class="container">
                        <!-- <div class="carousel-caption">
                            <h1>Any Bike can be a "cool" bike</h1>
                            <p>your life,your bike...you own it!!</p>
                        </div> -->
                    </div>
                </div>
                 <div class="item">
                    <img class="img-thumbnail" src="<c:url value='/resources/images/e.jpg'></c:url>" alt="forth slide" width="100%">
                    <div class="container">
                        <!-- <div class="carousel-caption">
                            <h1>Any Bike can be a "cool" bike</h1>
                            <p>your life,your bike...you own it!!</p>
                        </div> -->
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->
</div>
<br>
<br>
<hr>
<br>
<div class="row slideanim">
<center>
  <img align="middle" src="<c:url value='/resources/images/f.jpg'></c:url>"width="95%">
  </center>
  </div>
  <br>
  <div class="row slideanim">
  <center>
   <img align="middle" src="<c:url value='/resources/images/g.jpg'></c:url>"width="95%">
  </center>
  </div>
  <script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 200) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>