<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="<c:url value="/resources/css/normalize.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css" />">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
    <style type="text/css">
        /* GLOBAL STYLES
        -------------------------------------------------- */
        /* Padding below the footer and lighter body text */

        body {
            padding-bottom: 40px;
            color: #5a5a5a;
        }



        /* CUSTOMIZE THE NAVBAR
        -------------------------------------------------- */

        /* Special class on .container surrounding .navbar, used for positioning it into place. */
        .navbar-wrapper {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 10;
            margin-top: 20px;
            margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
        }

            .navbar-wrapper .navbar {
            }

        /* Remove border and change up box shadow for more contrast */
        .navbar .navbar-inner {
            border: 0;
            -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
            -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
            box-shadow: 0 2px 10px rgba(0,0,0,.25);
        }

        /* Downsize the brand/project name a bit */
        .navbar .brand {
            padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
            font-size: 16px;
            font-weight: bold;
            text-shadow: 0 -1px 0 rgba(0,0,0,.5);
        }

        /* Navbar links: increase padding for taller navbar */
        .navbar .nav > li > a {
            padding: 15px 20px;
        }

        /* Offset the responsive button for proper vertical alignment */
        .navbar .btn-navbar {
            margin-top: 10px;
        }



        /* CUSTOMIZE THE CAROUSEL
        -------------------------------------------------- */

        /* Carousel base class */
        .carousel {
            margin-bottom: 60px;
        }

            .carousel .container {
                position: relative;
                z-index: 9;
            }

        .carousel-control {
            height: 80px;
            margin-top: 0;
            font-size: 120px;
            text-shadow: 0 1px 1px rgba(0,0,0,.4);
            background-color: transparent;
            border: 0;
            z-index: 10;
        }

        .carousel .item {
            height: 500px;
        }

        .carousel img {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100%;
            height: 500px;
        }

        .carousel-caption {
            background-color: transparent;
            position: static;
            max-width: 550px;
            padding: 0 20px;
            margin-top: 200px;
        }

            .carousel-caption h1,
            .carousel-caption .lead {
                margin: 0;
                line-height: 1.25;
                color: #fff;
                text-shadow: 0 1px 1px rgba(0,0,0,.4);
            }

            .carousel-caption .btn {
                margin-top: 10px;
            }



        /* MARKETING CONTENT
        -------------------------------------------------- */

        /* Center align the text within the three columns below the carousel */
        .marketing .span4 {
            text-align: center;
        }

        .marketing h2 {
            font-weight: normal;
        }

        .marketing .span4 p {
            margin-left: 10px;
            margin-right: 10px;
        }


        /* Featurettes
        ------------------------- */

        .featurette-divider {
            margin: 80px 0; /* Space out the Bootstrap <hr> more */
        }

        .featurette {
            padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
            overflow: hidden; /* Vertically center images part 2: clear their floats. */
        }

        .featurette-image {
            margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
        }

            /* Give some space on the sides of the floated elements so text doesn't run right into it. */
            .featurette-image.pull-left {
                margin-right: 40px;
            }

            .featurette-image.pull-right {
                margin-left: 40px;
            }

        /* Thin out the marketing headings */
        .featurette-heading {
            font-size: 50px;
            font-weight: 300;
            line-height: 1;
            letter-spacing: -1px;
        }



        /* RESPONSIVE CSS
        -------------------------------------------------- */

        @media (max-width: 979px) {

            .container.navbar-wrapper {
                margin-bottom: 0;
                width: auto;
            }

            .navbar-inner {
                border-radius: 0;
                margin: -20px 0;
            }

            .carousel .item {
                height: 500px;
            }

            .carousel img {
                width: auto;
                height: 500px;
            }

            .featurette {
                height: auto;
                padding: 0;
            }

            .featurette-image.pull-left,
            .featurette-image.pull-right {
                display: block;
                float: none;
                max-width: 40%;
                margin: 0 auto 20px;
            }
        }


        @media (max-width: 767px) {

            .navbar-inner {
                margin: -20px;
            }

            .carousel {
                margin-left: -20px;
                margin-right: -20px;
            }

                .carousel .container {
                }

                .carousel .item {
                    height: 300px;
                }

                .carousel img {
                    height: 300px;
                }

            .carousel-caption {
                width: 65%;
                padding: 0 70px;
                margin-top: 100px;
            }

                .carousel-caption h1 {
                    font-size: 30px;
                }

                .carousel-caption .lead,
                .carousel-caption .btn {
                    font-size: 18px;
                }

            .marketing .span4 + .span4 {
                margin-top: 40px;
            }

            .featurette-heading {
                font-size: 30px;
            }

            .featurette .lead {
                font-size: 18px;
                line-height: 1.5;
            }
        }
    </style>
    <link href="<c:url value="/resources/css/bootstrap-responsive.min.css" />" rel="stylesheet" />
    <script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js" />"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png" />">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png" />">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png" />">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/assets/ico/apple-touch-icon-57-precomposed.png" />">
    <link rel="shortcut icon" href="<c:url value="/resources/assets/ico/favicon.png" />">
</head>
<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <!-- Add your site or application content here -->
    <div class="navbar-wrapper">
        <div class="container">
            <div class="navbar navbar-inverse">
                <div class="navbar-inner">
                    <div class="container">
                        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="brand" href="<c:url value="/resources/html/HomePage.html" />">IMatch Info</a>
                        <div class="nav-collapse collapse">
                            <ul class="nav">
                                <li class="active"><a href="<c:url value="/resources/HomePage.html" />">主页</a></li>
                                <li><a href="#Order">我的订单</a></li>
                                <li><a href="#Class">分类</a></li>
                                <li><a href="#Contact">联系我们</a></li>
                                <li class="dropdown">
                                    <a href="#产品" class="dropdown-toggle" data-toggle="dropdown">产品 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">微软</a></li>
                                        <li><a href="#">苹果</a></li>
                                        <li><a href="#">联想</a></li>
                                        <li class="divider"></li>
                                        <li class="nav-header">手机</li>
                                        <li><a href="#">小米</a></li>
                                        <li><a href="#">诺基亚</a></li>
                                        <li><a href="#">苹果</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <form class="navbar-form pull-right">
                                <input class="span2" type="text" placeholder="邮箱账号" />
                                <input class="span2" type="password" placeholder="密码" />
                                <button type="submit" class="btn">登录</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div><!--/.navbar-->
        </div><!--/.container-->
    </div><!--/.navbar-wrapper-->
    <!-- Carousel
        ===================================================  -->
    <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner">
            <div class="item active">
                <img src="<c:url value="/resources/img/Srfc_Pro4AndBook_1006_1920x720_EN_US.jpg" />" alt="Surface book" style="width:1500px;height550px;" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1 style="color:#2f2f2f">Surface book</h1>
                        <p style="color:#2f2f2f" class="lead">There’s no limit to what you can achieve with the versatility and power of Surface.</p>
                        <a class="btn btn-large btn-primary" href="#">现在购买</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="<c:url value="/resources/img/Ofc_AttachBG_1215_1920x720_EN_US.jpg"  />" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Windows</h1>
                        <p class="lead">Now includes the new Office 2016 apps for your PC and Mac.</p>
                        <a class="btn btn-large btn-primary" href="#">现在购买</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="<c:url value="/resources/img/Brand_WinSengaBG_1201_1920x720_EN_US.jpg" />" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Microsoft</h1>
                        <p class="lead">WinSenga is improving prenatal care in Africa with Microsoft technology</p>
                        <a class="btn btn-large btn-primary" href="#">现在购买</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
    <!-- /.carousel -->

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
    <div class="container marketing">
        <div class="row">
            <div class="span4">
                <img class="img-circle" data-src="holder.js/140x140" src="<c:url value="/resources/img/Win10_DevTools_1002_540x304_EN_US.png" />" />
                <h2>Heading</h2>
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!-- /.span4 -->
            <div class="span4">
                <img class="img-circle" data-src="holder.js/140x140" src="<c:url value="/resources/img/Dyn_CRMOnline_0303_540x304.jpg" />">
                <h2>Heading</h2>
                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!-- /.span4 -->
            <div class="span4">
                <img class="img-circle" data-src="holder.js/140x140" src="<c:url value="/resources/img/Ofc365_Enterprise_1201_540x304_EN_US.jpg" />" />
                <h2>Heading</h2>
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!-- /.span4 -->
        </div>

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="featurette">
            <img class="featurette-image pull-right" src="<c:url value="/resources/img/26c4b3a6-1443-4ad3-b436-e0eaee82381c (1).jpg" />">
            <h2 class="featurette-heading">First featurette headling. <span class="muted">It'll blow your mind.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>

        <hr class="featurette-divider">

        <div class="featurette">
            <img class="featurette-image pull-left" src="<c:url value="/resources/img/26c4b3a6-1443-4ad3-b436-e0eaee82381c (1).jpg" />">
            <h2 class="featurette-heading">Oh yeah, it's that good. <span class="muted">See for yourself.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>

        <hr class="featurette-divider">

        <div class="featurette">
            <img class="featurette-image pull-right" src="<c:url value="/resources/img/26c4b3a6-1443-4ad3-b436-e0eaee82381c (1).jpg" />">
            <h2 class="featurette-heading">And lastly, this one. <span class="muted">Checkmate.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

        <!-- FOOTER -->
        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </div>
    <!--End of application site content-->
    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="<c:url value="/resources/js/holder.js" />"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
    <script src="<c:url value="/resources/js/plugins.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function (b, o, i, l, e, r) {
            b.GoogleAnalyticsObject = l; b[l] || (b[l] =
            function () { (b[l].q = b[l].q || []).push(arguments) }); b[l].l = +new Date;
            e = o.createElement(i); r = o.getElementsByTagName(i)[0];
            e.src = 'https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e, r)
        }(window, document, 'script', 'ga'));
        ga('create', 'UA-XXXXX-X', 'auto'); ga('send', 'pageview');

        !function ($) {
            $(function () {
                // carousel demo
                $('#myCarousel').carousel()
            })
        }(window.jQuery)
    </script>
</body>
</html>
