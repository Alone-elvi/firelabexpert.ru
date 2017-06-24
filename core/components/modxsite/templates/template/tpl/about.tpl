{extends "layout.tpl"}

{block content}

    {block name=params}
        {$params = [
        "where"=>["id"=>$modx->resource->id],
        "current"  => true,
        "showhidden"   => 1,
        "showunpublished"   => 1
        ]}

        {$options = "&q=100&w=200"}

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
            <section>
                <div class="section-title">
                    <h2>{$object.pagetitle}</h2>
                    <h3 class="sub-heading">Что мы вам можем предложить?</h3>
                </div>
                <div class="col-row">
                    <div class="one-third">
                        {$object.content}
                    </div><!-- end  -->

                    <div class="one-third">
                        <img class="animated" data-animation="fadeInRight" src="{$src}" alt="image description"/>
                    </div><!-- end  -->
                </div>
            </section><!-- end  -->
        </div>
        {include file="inc/common/get_sidebar_r.tpl"}
        <div class="separator-6"></div><!-- end separator -->

        <section>

            <div class="section-title">
                <h2>Наши клиенты</h2>
                <h3 class="sub-heading">Постоянные клиенты</h3>
            </div>

            <ul class="col-row clients">
                <li class="one-sixth"><a href="sidebar-alt.html#"><img src="{$pre_template_url}img/dummy-logo/001.png" alt="image description" /></a></li>
                <li class="one-sixth"><a href="sidebar-alt.html#"><img src="{$pre_template_url}img/dummy-logo/002.png" alt="image description" /></a></li>
                <li class="one-sixth"><a href="sidebar-alt.html#"><img src="{$pre_template_url}img/dummy-logo/003.png" alt="image description" /></a></li>
                <li class="one-sixth"><a href="sidebar-alt.html#"><img src="{$pre_template_url}img/dummy-logo/005.png" alt="image description" /></a></li>
            </ul>

        </section><!-- end  -->

    </section>

{/block}