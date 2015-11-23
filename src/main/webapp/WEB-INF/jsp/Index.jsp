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
                <h3 class="no-margin-top h1">Search</h3>
                <div class="input-group input-group-lg">
                    <input type="search" placeholder="search" class="form-control">
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


</body>


</html>