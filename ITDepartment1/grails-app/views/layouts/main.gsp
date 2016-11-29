
<!doctype html>
<html lang="en" class="no-js">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>
        <g:layoutTitle default="DWIT IT Department"/>
    </title>


    <!-- start-smoth-scrolling -->
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href='//fonts.googleapis.com/css?family=Capriola' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

    <div class="header">
            <div class="container">
            <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="../index.gsp"><span>IT</span> Department</a></h1>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
            <nav class="menu menu--shylock">
            <ul class="nav navbar-nav">
            <li class="active"><a href="../">Home</a></li>
            <li><a href="../tutorials/index" class="hvr-bounce-to-bottom">Tutorials</a></li>
            <li><a href="portfolio.html" class="hvr-bounce-to-bottom">Blog</a></li>
            <li><a href="../meetingMinute" class="hvr-bounce-to-bottom">Meeting Minutes</a></li>
             %{--   <sec:isLoggedIn>

                    <li><a href="../notice" class="hvr-bounce-to-bottom">Notice</a></li>

                </sec:isLoggedIn>--}%
          %{--   ${grails.plugin.springsecurity.SpringSecurityUtils.ifAnyGranted(roles)};
--}%
    <li><a href="mail.html" class="hvr-bounce-to-bottom">Mail Us</a></li>
    </ul>
    <div class="clearfix"> </div>
            </nav>
            </div>
            </nav>
            </div>
            </div>
    <g:layoutBody/>

<div class="footer">
    <div class="container">
        <div class="col-md-4 w3l_footer_grid">
            <h2><a href="index.html"><span>IT</span> Department</a></h2>
            <p>Vestibulum sed convallis massa, eu aliquet massa. Suspendisse
            lacinia rutrum tincidunt. Integer id erat porta, convallis tortor a,
            ullamcorper magna.</p>
        </div>
        <div class="col-md-3 w3l_footer_grid">
            <h3>Address</h3>
            <ul class="w3_address">
                <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
                <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
                <li><i class="glyphicon glyphicon-earphone"  aria-hidden="true"></i>+1234 567 567</li>
            </ul>
        </div>
        <div class="col-md-2 w3l_footer_grid">
            <h3>Navigation</h3>
            <ul class="agileinfo_footer_grid_nav">
                <li><a href="services.html"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Services</a></li>
                <li><a href="portfolio.html"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Portfolio</a></li>
                <li><a href="short-codes.html"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Short Codes</a></li>
                <li><a href="mail.html"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Mail Us</a></li>
            </ul>
        </div>
        <div class="col-md-3 w3l_footer_grid">
            <h3>Social Media</h3>
            <ul class="agileinfo_social_icons1 agileinfo_social">
                <li><a href="#" class="facebook"></a></li>
                <li><a href="#" class="twitter"></a></li>
                <li><a href="#" class="google"></a></li>
                <li><a href="#" class="pinterest"></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        <div class="w3agile_footer_copy">
            <p>© 2016 IT Department All rights reserved</p>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->

<asset:javascript src="application.js"/>

</body>
</html>
