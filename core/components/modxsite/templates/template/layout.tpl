{extends "[main]layout.tpl"}

<!DOCTYPE html>
<html class="no-js">
<head>
    <title>Estimation</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta content="True" name="HandheldFriendly"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <meta name="viewport" content="width=device-width"/>

    <!--*************************
    *							*
    *         CSS FILES			*
    *							*
    ************************* -->
    {block name=fonts}
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&amp;subset=latin,latin-ext'
              rel='stylesheet' type='text/css'>
        <!-- Due to IE8 inabillity to load multiple font weights from Google Fonts, we need to import them separately -->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300"/>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:700"/>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:800"/>
        <![endif]-->
        <!-- Font Awesome -->
        <link href="{$pre_template_url}css/font-awesome.min.css" rel="stylesheet">
    {/block}
    <!--imports the main css file-->
    {block name=styles append}
        <link rel="stylesheet" href="{$pre_template_url}css/skins/tangerine.css"/>
        <!-- used for animation effects on elements -->
        <link rel="stylesheet" href="{$pre_template_url}css/animate.min.css"/>
        <!-- styling for Nivo Lightbox gallery -->
        <link rel="stylesheet" href="{$pre_template_url}css/nivo-lightbox.css"/>
        <link rel="stylesheet" href="{$pre_template_url}fancybox/jquery.fancybox.min.css"/>
        <link rel="stylesheet" href="{$pre_template_url}css/default.css"/>
        <!-- styles for the Revolution Slider -->
        <link rel="stylesheet" href="{$pre_template_url}plugins/rs-plugin/css/settings.css" media="screen"/>
        <!--imports the media queries css file-->
        <link rel="stylesheet" href="{$pre_template_url}css/responsive.css"/>
        <!-- preview only styles for the option panel -->
        <link rel="stylesheet" href="{$pre_template_url}css/layout.css"/>
        <link rel="stylesheet" href="{$pre_template_url}css/custom.css"/>
    {/block}

    <!--*************************
    *							*
    *      JAVASCRIPT FILES	 	*
    *							*
    ************************* -->

    <!-- imports modernizr plugin for detecting browser features -->
    {block name=shopmodx_scripts}
        <script src="{$pre_template_url}js/modernizr.custom.js"></script>
        <!--[if IE 8]>
        <link href="../css/ie8.css" rel="stylesheet"/>
        <script src="../js/respond.js"></script>
        <![endif]-->
    {/block}
</head>
{block name=body}
    <body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status"></div>
    </div>

    <header id="header">
        <div class="container-center cf">
            <div class="col-row">
                <div class="logo-tf">
                    <div>
                        <a href="/"><img src="{$pre_template_url}img/logo/logo-tf.png"
                                         alt="Firelabexpert"/></a>
                    </div>
                </div>
                <!-- end logo -->
                <div class="contacts-header">
                    <i class="fa fa-globe icon-header"></i>
                    {include file="inc/contacts/address.tpl"}
                </div>
                <div class="contacts-header">
                    <div class="phone-header">
                        <i class="fa fa-phone-square icon-header"></i>
                        <a href="tel:{include file="inc/contacts/phone.tpl"}">{include file="inc/contacts/phone.tpl"}</a>
                    </div>
                    <div class="email-header">
                        <i class="fa fa-envelope icon-header"></i>
                        <a href="mailto:{include file="inc/contacts/e-mail.tpl"}">{include file="inc/contacts/e-mail.tpl"}</a>
                    </div>
                </div>
            </div>
            <div class="search-container">
                <a id="toggle-search" class="search-button search-open" href="index-ver-2.html#"><i
                            class="fa fa-search"></i></a>
                <div class="search-panel cf">
                    <div class="search-form">
                        <form method="post" action="">
                            <input type="text" id="header-search-box"
                                   onfocus="if(this.value=='Enter keywords...')this.value='';"
                                   onblur="if(this.value=='')this.value='Enter keywords...';"
                                   value="Enter keywords...">
                            <button id="header-search-button" type="submit" name="submit">Go !</button>
                        </form>
                    </div><!-- end search-form -->
                </div><!-- end search-panel -->
            </div><!-- search-container -->

            {include "inc/menu/mainmenu/menu.tpl"}
        </div><!-- end container-center -->
    </header>
    {if $modx->resource->id != $modx->config["site_start"] }
        <section class="page-title section-bg-bc">
            <div class="page-title-inner container-center cf">

                <div class="page-title-icon"><i class="fa fa-chevron-circle-right"></i></div>

                <h1>{$modx->resourse->pagetitle}</h1>

                <div class="breadcrumbs">
                    {block name=Breadcrumbs}
                        {snippet name="Breadcrumbs@Breadcrumbs"}
                    {/block}
                </div><!-- end breadcrumbs -->

            </div><!-- end container-center -->
        </section>
        <!-- end page-title -->
        {block name=slider}
        {/block}
    {/if}

    <section class="content">
        <div class="container-center">
            {block name=content}
                {$modx->resource->content}
            {/block}
        </div>
    </section>

    {block name=footer}
        {include file="inc/footer/footer.tpl"}
    {/block}
    <div class="scroll-top"><a href="index-ver-2.html#"><i class="fa fa-angle-up"></i></a></div>

    <!--*************************
    *							*
    *      JAVASCRIPT FILES	 	*
    *							*
    ************************* -->
    {block name=bootstrap_js}
    {/block}
    <!--imports jquery-->
    <script src="{$pre_template_url}js/jquery-1.10.2.min.js"></script>
    <script src="{$pre_template_url}js/jquery-migrate-1.1.0.min.js"></script>

    <!-- used for the contact form -->
    <script src="{$pre_template_url}js/jquery.form.js"></script>
    <!-- used for the the fun facts counter -->
    <script src="{$pre_template_url}js/jquery.countTo.js"></script>
    <!-- for displaying flickr images -->
    <script src="{$pre_template_url}js/jflickrfeed.min.js"></script>
    <!-- used to trigger the animations on elements -->
    <script src="{$pre_template_url}js/waypoints.min.js"></script>
    <!-- used to stick the navigation menu to top of the screen on smaller displays -->
    <script src="{$pre_template_url}js/waypoints-sticky.min.js"></script>
    <!-- used for rotating through tweets -->
    <script src="{$pre_template_url}js/vTicker.js"></script>
    <!-- imports jQuery UI, used for toggles, accordions, tabs and tooltips -->
    <script src="{$pre_template_url}js/jquery-ui-1.10.3.custom.min.js"></script>
    <!-- used for smooth scrolling on local links -->
    <script src="{$pre_template_url}js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <!-- used for opening images in a Lightbox gallery -->
    <script src="{$pre_template_url}js/nivo-lightbox.min.js"></script>
    <!-- used for opening images in a Fancybox gallery -->
    <script type="text/javascript" src="{$pre_template_url}fancybox/jquery.fancybox.min.js"></script>
    <!-- used for displaying tweets -->
    <script src="{$pre_template_url}js/jquery.tweet.js"></script>
    <!-- flexslider plugin, used for image galleries (blog post preview, portfolio single page) and carousels -->
    <script src="{$pre_template_url}js/jquery.flexslider-min.js"></script>
    <!-- used for sorting portfolio items -->
    <script src="{$pre_template_url}js/jquery.isotope.js"></script>
    <!-- for detecting Retina displays and loading images accordingly -->
    <script src="{$pre_template_url}js/retina-1.1.0.min.js"></script>
    <!-- for dropdown menus -->
    <script src="{$pre_template_url}js/superfish.js"></script>
    <!-- used for sharing post pages -->
    <script src="{$pre_template_url}js/jquery.sharrre.min.js"></script>
    <!-- easing plugin for easing animation effects -->
    <script src="{$pre_template_url}js/jquery-easing-1.3.js"></script>
    <!-- Slider Revolution plugin -->
    <script src="{$pre_template_url}plugins/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script src="{$pre_template_url}plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <!--imports custom javascript code-->
    <script src="{$pre_template_url}js/custom.js"></script>
    <!--preview oonly option panel code -->
    <script src="{$pre_template_url}js/options.js"></script>
    </body>
{/block}
</html>