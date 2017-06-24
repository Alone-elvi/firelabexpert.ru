{extends "layout.tpl"}

{block content}

    {block name=params}
        {$params = [
        "where"=>["id"=>$modx->resource->id],
        "current"  => true,
        "showhidden"   => 1,
        "showunpublished"   => 1
        ]}

        {$options = "&q=100"}

    {/block}

    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
    {$object = $result.object}
    {$image = $object.image|default:$object.imageDefault}

    {$src = $modx->runSnippet('phpthumbof', [
    "input"   => $image,
    "options" => $options
    ])}

    {*<div class="main-content-left">*}
    <section class="container-center cf">

        <div class="main-content-left">
            <article class="blog-post cf">
                <div class="post-img">
                    <img src="{$src}" alt="{$object.description}"/>
                </div>
                <!-- end post-img -->
                <div class="meta">
                    <div class="date">
                        <span class="day">{$object.publishedon|date_format:"%d"}</span>
                        <span class="month">{$object.publishedon|date_format:"%m"}</span>
                    </div>
                    <!-- end date -->
                    <div class="blog-type"><i class="fa fa-calendar-o"></i></div>
                    <div class="share-post"></div>
                </div>
                <!-- end blog-type -->
                <div class="post-content">
                    <div class="post-title">
                        <h1>{$object.pagetitle}</h1>

                    </div>
                    {$object.content}
                </div>
            </article>
        </div>
        {include file="inc/common/get_sidebar_r.tpl"}
        <div class="separator-6"></div><!-- end separator -->
    </section>
{/block}