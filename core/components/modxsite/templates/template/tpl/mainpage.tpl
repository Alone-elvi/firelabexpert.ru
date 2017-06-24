{* Шаблон главной страницы. Расширяет шаблон layout.tpl *}
{extends "layout.tpl"}

{block name="title"}{$site_name}{/block}


{block name=slider}
{/block}
{* Переопределяем блок контента *}
{block name=content}
    {include file="inc/mainpage/block_documents.tpl"}
    <div class="separator-6"></div>
    <!-- end separator -->

    {*<section class="content">*}
    {*<div class="container-center cf">*}
    {*<div class="col-row">*}
    {*<div class="classic-box one-fourth animated" data-animation="fadeInLeft">*}
    {*<div class="classic-box-title">*}
    {*<h3>A Twist In A Myth</h3>*}
    {*<h4 class="subtitle">Mandatory Subtitle</h4>*}
    {*</div><!-- end classic-box-title -->*}
    {*<i class="fa fa-globe"></i>*}
    {*<p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>*}
    {*<a class="button small-btn" href="index-ver-2.html#">Read More</a>*}
    {*</div><!-- end box -->*}

    {*<div class="classic-box one-fourth animated" data-animation="fadeInLeft">*}
    {*<div class="classic-box-title">*}
    {*<h3>Ride Into Obsession</h3>*}
    {*<h4 class="subtitle">Mandatory Subtitle</h4>*}
    {*</div><!-- end classic-box-title -->*}
    {*<i class="fa fa-group"></i>*}
    {*<p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>*}
    {*<a class="button small-btn" href="index-ver-2.html#">Read More</a>*}
    {*</div><!-- end box -->*}

    {*<div class="classic-box one-fourth animated" data-animation="fadeInRight">*}
    {*<div class="classic-box-title">*}
    {*<h3>By The Gates of Moria</h3>*}
    {*<h4 class="subtitle">Mandatory Subtitle</h4>*}
    {*</div><!-- end classic-box-title -->*}
    {*<i class="fa fa-leaf"></i>*}
    {*<p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>*}
    {*<a class="button small-btn" href="index-ver-2.html#">Read More</a>*}
    {*</div><!-- end box -->*}

    {*<div class="classic-box one-fourth animated" data-animation="fadeInRight">*}
    {*<div class="classic-box-title">*}
    {*<h3>Time Stands Still</h3>*}
    {*<h4 class="subtitle">Mandatory Subtitle</h4>*}
    {*</div><!-- end classic-box-title -->*}
    {*<i class="fa fa-power-off"></i>*}
    {*<p>Fusce scelerisque pellentesqu suspendisse elementum tellus vel volutpat. Proin sapien.</p>*}
    {*<a class="button small-btn" href="index-ver-2.html#">Read More</a>*}
    {*</div><!-- end box -->*}
    {*</div><!-- end col-row -->*}
    {*</div><!-- end container-center -->*}
    {*</section><!-- end content -->*}

    {*<div class="separator-6"></div><!-- end separator -->*}

    {*<section class="content">*}
    {*<div class="container-center">*}
    {*<div class="col-row">*}

    {*<div class="one-fourth">*}
    {*<div class="section-title align-left">*}
    {*<h2>Recent Projects</h2>*}
    {*<h3 class="sub-heading">Check Out Our Latest Creations</h3>*}
    {*</div>*}
    {*<p>Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec*}
    {*suscipit*}
    {*erod proin viverodio.</p>*}
    {*</div><!-- end one-fourth -->*}

    {*<div class="carousel-wrap three-fourth">*}
    {*<div class="carousel-container flex-nav-left">*}
    {*<ul class="slides">*}
    {*<li class="one-fourth animated" data-animation="fadeInUp">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/401.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-arrows-alt"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>Wheel of Time</h5>*}
    {*<span>Graphic Design</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}

    {*<li class="one-fourth animated" data-animation="fadeInUp" data-animation-delay="150">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/402.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-play"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>And The Story Ends</h5>*}
    {*<span>Web Design</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}

    {*<li class="one-fourth animated" data-animation="fadeInUp" data-animation-delay="300">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/403.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-arrows-alt"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>Tanelorn</h5>*}
    {*<span>Graphic Design - Web Design</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}

    {*<li class="one-fourth animated" data-animation="fadeInUp" data-animation-delay="450">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/407.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-arrows-alt"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>Bright Eyes</h5>*}
    {*<span>Web Design - SEO</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}

    {*<li class="one-fourth">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/403.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-arrows-alt"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>Sadly Sings Destiny</h5>*}
    {*<span>Graphic Design - Web Design - SEO</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}

    {*<li class="one-fourth">*}
    {*<div class="p-item">*}
    {*<figure>*}
    {*<div class="overlay-container">*}

    {*<img src="{$pre_template_url}img/portfolio/402.jpg"*}
    {*alt="Image description"/>*}

    {*<div class="overlay">*}
    {*<div class="overlay-buttons">*}
    {*<a href="{$pre_template_url}img/portfolio/large/001.jpg"*}
    {*data-nivo-rel="nivoLightbox">*}
    {*<i class="fa fa-arrows-alt"></i>*}
    {*</a>*}
    {*<a class="last" href="index-ver-2.html#"><i class="fa fa-chain"></i></a>*}
    {*</div><!-- end overlay-buttons -->*}
    {*<div class="overlay-bg"></div><!-- end overlay-bg -->*}
    {*</div><!-- end overlay -->*}

    {*</div><!-- end overlay-container -->*}

    {*<figcaption>*}
    {*<h5>Turn The Page</h5>*}
    {*<span>Graphic Design - Web Design - SEO</span>*}
    {*</figcaption>*}
    {*</figure>*}
    {*</div><!-- end p-item -->*}
    {*</li>*}
    {*</ul>*}
    {*</div><!-- end carousel-1 -->*}
    {*</div><!-- end carousel-wrap -->*}

    {*</div><!-- end col-row -->*}

    {*</div><!-- end container-center -->*}
    {*</section><!-- end content -->*}
    <section class="content">
        <div class="container-center cf">
            <div class="col-row">
                <div class="one-half align-center">
                    <h3>Поможем расчитать стоимость</h3>
                    <a class="button large-btn rounded" href="#"><i class="fa fa-rouble"></i>Расчитать стоимость</a>
                </div>
                <div class="one-half align-center">
                    <h3>Мы Вам перезвоним</h3>
                    <a class="button large-btn rounded" href="#"><i class="fa fa-external-link"></i>Обратный звонок</a>
                </div>
            </div><!-- end col-row -->
        </div><!-- end container-center -->
    </section>
    <!-- end content -->
    <div class="separator-6"></div>
    <!-- end separator -->
    {include file="inc/mainpage/block_description.tpl"}
    <div class="separator-6"></div>
    <!-- end separator -->


    {include file="inc/mainpage/block_research_fire_safety.tpl"}
    {*<div class="separator-6"></div>*}
    {*<!-- end separator -->*}
    {*<section class="content">*}
        {*<div class="container-center">*}
            {*<div class="section-title align-center">*}
                {*<h2>Our Top Clients</h2>*}
                {*<h3 class="sub-heading">Some of Our Satisfied Clients</h3>*}
            {*</div>*}

            {*<ul class="col-row clients animated" data-animation="fadeIn">*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/001.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/002.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/003.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/006.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/003.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/001.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/006.png"*}
                                                                        {*alt="image description"/></a></li>*}
                {*<li class="one-fourth"><a href="index-ver-2.html#"><img src="{$pre_template_url}img/dummy-logo/002.png"*}
                                                                        {*alt="image description"/></a></li>*}
            {*</ul>*}

        {*</div><!-- end container-center -->*}
    {*</section>*}
    {*<!-- end content -->*}
    {*<section class="twitter-holder section-bg-1">*}
        {*<div class="container-center">*}
            {*<h2>Follow us on Twitter!</h2>*}
            {*<div class="twitter-feed"></div><!-- end twitter-feed -->*}
            {*<a href="index-ver-2.html#" class="twitter-icon"><i class="fa fa-twitter"></i></a><!-- end twitter-icon -->*}
        {*</div><!-- container-center -->*}
    {*</section>*}
{/block}

