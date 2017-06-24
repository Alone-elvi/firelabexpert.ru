{extends "layout.tpl"}

{block name="title"}{$site_name}{/block}
{block name=params}
    {$params=[
    "parent" => $modx->resource->id,
    'showhidden' => 1,
    'showunpublished' => 1,
    "cache"     => 1,
    "summary" => 1
    ]}

    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
    {$options = "&q=100&w=200&h=200&zc=1"}

{/block}
{block name=content}
    <section class="content">
        <div class="container-center">
            <div class="filter-container cf">
                <span>Фильтры :</span>
                <ul class="filters cf">
                    <li><a class="all current" href="{$object.uri}#" data-filter="*">Все</a></li>
                    {foreach $result.object as $object}
                        <li>
                            <a href="{$object.uri}#" data-filter=".{$object.alias}">{$object.pagetitle}</a>
                        </li>
                    {/foreach}
                </ul>
            </div><!-- end filter-container -->

            <div id="portfolio-cont">
                <div id="filterable" class="portfolio-items col-row stream-portfolio cf">
                    {foreach $result.object as $object}
                        {$image = $object.image|default:$object.imageDefault}

                        {$src = $modx->runSnippet('phpthumbof', [
                        "input"   => $image,
                        "options" => $options
                        ])}
                        <!-- ROW 1 -->
                        <div class="{$object.alias} one-fourth">
                            <div class="p-item">
                                <figure>
                                    <div class="overlay-container">

                                        <img src="{$src}" alt="{$object.description}"/>

                                        <div class="overlay">
                                            <div class="overlay-buttons">
                                                <a href="{$image}" data-nivo-rel="nivoLightbox">
                                                    <i class="fa fa-arrows-alt"></i>
                                                </a>
                                                <a class="last" href="{$object.uri}"><i class="fa fa-chain"></i></a>
                                            </div><!-- end overlay-buttons -->
                                            <div class="overlay-bg"></div><!-- end overlay-bg -->
                                        </div><!-- end overlay -->

                                    </div><!-- end overlay-container -->

                                    <figcaption>
                                        <h5>{$object.pagetitle}</h5>
                                        <span></span>
                                    </figcaption>
                                </figure>
                            </div><!-- end p-item -->
                        </div>
                    {/foreach}
                </div>
                <!-- end portfolio-items -->
            </div><!-- end portfolio-cont -->
        </div><!-- end container-center -->
    </section>
    <!-- end content -->

{/block}