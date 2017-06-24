{extends "layout.tpl"}

{block content}

    {block name=params}
        {$params = [
        "parent"=> $modx->resource->id,
        "current"  => false,
        "showhidden"   => 1,
        "showunpublished"   => 1,
        "summary" => True
        ]}

        {$options = "&q=100&w=200&h=200&zc=1"}

    {/block}

    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
    <section class="container-center cf">
        <div class="main-content-left">
            {foreach $result.object as $object}
                {$image = $object.image|default:$object.imageDefault}

                {$src = $modx->runSnippet('phpthumbof', [
                "input"   => $image,
                "options" => $options
                ])}
                <article class="blog-post blog-style-2 cf">
                    <div class="meta">
                        <div class="date">
                            <span class="day">{$object.publishedon|date_format:"%d"}</span>
                            <span class="month">{$object.publishedon|date_format:"%m %Y"}</span>
                        </div><!-- end date -->
                        <div class="blog-type"><i class="fa fa-calendar"></i></div><!-- end blog-type -->
                    </div><!-- end meta -->

                    {*{if $src}*}
                    <div class="post-img">
                        <a class="img-link" href="{$object.uri}">
                            <img src="{$src}" alt="{$object.description}"">
                        </a>
                    </div>
                    <!-- end image-gallery -->
                    {*{/if}*}

                    <div class="post-content">
                        <div class="post-title">
                            <h3><a href="{$object.uri}">{$object.pagetitle}</a></h3>
                            {*<div class="tags"><span><i class="fa fa-user"></i><a href="blog.html#">Admin</a></span>*}
                            {*<span><i class="fa fa-tags"></i><a href="blog.html#">Photoshop</a>, <a*}
                            {*href="blog.html#">InDesign</a>, <a href="blog.html#">Fireworks</a></span>*}
                            {*<span><i class="fa fa-comments"></i><a href="blog.html#">5 comments</a></span></div>*}
                        </div><!-- end post-title -->
                        {$object.summary}
                        <a class="button small-btn" href="{$object.uri}">Перейти</a>

                    </div><!-- end post-content -->

                </article>
                <!-- end blog-post -->
                <div class="separator-6"></div>
                <!-- end separator -->
            {/foreach}
        </div>
        {include file="inc/common/get_sidebar_r.tpl"}
    </section>
{/block}