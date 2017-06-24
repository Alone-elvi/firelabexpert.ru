{extends    "layout.tpl"}
{block name=content}

    {$params = [
    "where" => ["id"    => $modx->resource->get('id')],
    "current"   => true,
    "getPage"  => true,
    'showhidden' => 1,
    "limit" => 12,
    "page" => (int)$smarty.get.page,
"cache" => 1


]}

    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
    {$objSl = json_decode($result.object.tvs.multi_images.value, 1)}

    {*processor action="web/resources/getdata" ns=modxsite params=$params assign=result*}
    {$options = "&q=100&h=200&w=200&zc=1&fltr[]=wmi|/assets/images/site/common/firelab-expert-img.png|*|8|-10|-10|0"}
    {$optionsbig = "&q=100&fltr[]=wmi|/assets/images/site/common/firelab-expert-img.png|*|8|-10|-10|0"}
    <div id="portfolio-cont">
        <div id="filterable" class="portfolio-items col-row ">
            {foreach $objSl as $object}
                {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                {if (getimagesize($image))}
                    {$src = $modx->runSnippet('phpthumbof', [
                    "input"   => $image,
                    "options" => $options
                    ])}
                    {$img_flag = 1}
                {else}
                    {$str = explode('/', $object.image)}
                    {$str = end($str)}

                    {$src = $modx->runSnippet('phpthumbof', [
                    "input" => "http://img.youtube.com/vi/{$str}/hqdefault.jpg",
                    "options" => $options
                    ])}
                    {$image="http://www.youtube.com/watch?v=$str"}
                    {$img_flag = 0}
                {/if}


                <!-- ROW 1 -->
                <div class="photo one-fourth">
                    <div class="p-item">
                        <figure>
                            <a href="{$image}"
                               title="{if $object.title}{$object.title}{/if}"
                               data-fancybox="group"
                            /*data-nivo-rel="nivoLightbox"*/
                            /*data-lightbox-gallery="nivo-gallery"*/>
                            <img src="{$src}"
                                 class=
                                 alt="{if $object.description}{$object.description}{/if}"
                                 title="{if $object.title}{$object.title}{/if}">
                            <span class="stream-portfolio-overlay">
                                    <i class="fa fa-search"></i>
                                </span>
                            </a>
                            {if $object.title or $object.description}
                                <figcaption>
                                    {if $object.title}
                                        <h5>{$object.title}</h5>
                                    {/if}
                                    {if $object.description}
                                        <span>{$object.description}</span>
                                    {/if}
                                </figcaption>
                            {/if}
                        </figure>
                    </div><!-- end p-item -->
                </div>
            {/foreach}
        </div>
    </div>
    <div class="row">
        {include "common/pagination/pagination.tpl"}
    </div>
    <script type="application/javascript">
        $(".fancybox-thumb").fancybox({});
    </script>
{/block}
