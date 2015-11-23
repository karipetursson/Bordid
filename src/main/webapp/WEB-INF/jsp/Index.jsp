<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>

<head>

    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Borðið</title>

    <script type="text/javascript" src="bootstrap/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/bootstrap.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/bootstrap-theme.min.css'/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value='../../bootstrap/css/custom.css'/> ">

    <link rel="stylesheet" type="text/css" href="<c:url value='../../css/postitnote.css'/> ">

</head>

<!-- Header -->
<header id="header" class="alt">
    <h1><a href="/">Borðið</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/addNewRestaurant">Add New Restaurant</a></li>
            <li><a href="/restaurants">All Restaurants</a></li>
            <li><a href="/bookings">Bookings</a></li>
            <li><a href="/about">About</a></li>
        </ul>
    </nav>
</header>
<!-- Banner -->
<section id="banner">
    <h2>Borðið</h2>
    <p>Finnið - Bókið - Borðið</p>
    <ul class="actions">
        <li><a href="#" class="button">Meira</a></li>
    </ul>
    <div class="featurette">
        <div class="featurette-inner text-center">
            <form role="form" class="search">
                <div class="input-group input-group-lg">
                    <input type="search" placeholder="search" class ="form-control">
            <span class="input-group-btn">
            <button class="btn btn-danger" type="button">Search</button>
            </span>
                </div>
                <!-- /input-group -->
            </form>
            <!-- /.max-width on this form -->
        </div>
        <!-- /.featurette-inner (display:table-cell) -->
    </div>
</section>
<!-- One -->
<div class="wrapper style1">
    <section class="container">
        <header class="major">
            <h2>Veitingastaðirnir</h2>
            <p>Borðið veitir þér einstaka upplifun og aðgengi - með alla veitingastaði á einum stað.</p>
        </header>
        <div class="row uniform">
            <div class="4u 12u(narrower)">
                <section class="box special">
                    <i class="icon major fa-user"></i>
                    <h3>Vinsælast</h3>
                    <p>Vinsælustu staðirnir á meðal neytenda.</p>
                </section>
            </div>
            <div class="4u 12u(narrower)">
                <section class="box special">
                    <i class="icon major fa-tint"></i>
                    <h3>Finndu veitingastaðinn sem er næst þér</h3>
                    <p>blblblblblbla.</p>
                </section>
            </div>
            <div class="4u 12u(narrower)">
                <section class="box special">
                    <i class="icon major fa-cog"></i>
                    <h3>Komdu mér á óvart</h3>
                    <p>Leyfðu okkur að koma þér á óvart með því að bjóða þér upp á veitingastaði.</p>
                </section>
            </div>
        </div>
    </section>
</div>

<!-- Four -->
<div class="wrapper style1">
    <section class="container 75%">
        <header class="major">
            <h2>Contact</h2>
            <p>Bordid is the first destination would be the first destination for a hungry Icelander or a weary traveler looking for something to eat. Contact us for further informations.</p>
        </header>
        <div id="contact" class="box">
            <div class="row uniform">
                <div class="7u 12u(narrower)">
                    <form method="post" action="#">
                        <div class="row uniform 50%">
                            <div class="12u">
                                <input type="text" name="name" id="name" placeholder="Name" />
                            </div>
                        </div>
                        <div class="row uniform 50%">
                            <div class="12u">
                                <input type="email" name="email" id="email" placeholder="Email" />
                            </div>
                        </div>
                        <div class="row uniform 50%">
                            <div class="12u">
                                <textarea name="message" id="message" placeholder="Message" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="row uniform 50%">
                            <div class="12u">
                                <ul class="actions">
                                    <li><input type="submit" value="Send" /></li>
                                    <li><input type="reset" class="alt" value="Reset" /></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="5u 12u(narrower)">
                    <ul class="labeled-icons">
                        <li>
                            <h3 class="icon fa-map-marker"><span class="label">Address</span></h3>
                            Borðið ehf.<br />
                            Grundarstígur 11<br />
                            101 Reykjavík, kt. 080391 2859
                        </li>
                        <li>
                            <h3 class="icon fa-phone"><span class="label">Phone</span></h3>
                            (00354) 848 5753
                        </li>
                        <li>
                            <h3 class="icon fa-envelope"><span class="label">Email</span></h3>
                            <a href="#">info@bordid.com</a>
                        </li>
                        <li>
                            <h3 class="icon fa-twitter"><span class="label">Twitter</span></h3>
                            <a href="https://twitter.com/bordid_is">twitter.com/bordid</a>
                        </li>
                        <li>
                            <h3 class="icon fa-facebook"><span class="label">Facebook</span></h3>
                            <a href="#">facebook.com/bordid</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Footer -->
<footer id="footer">
    <ul class="menu">
        <li><a href="#">About</a></li>
        <li><a href="#">Terms of Use</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Contact Us</a></li>
    </ul>
    <div class="copyright">
        &copy; Bordid. All rights reserved.
    </div>
</footer>

</div>


</body>


</html>