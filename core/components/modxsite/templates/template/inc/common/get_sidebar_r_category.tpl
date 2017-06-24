{$params=[
"parent" =>  $modx->resource->id,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{if count($result.object)>=1}
    <div class="sidebar-box">
        <h3><i class="boxed fa fa-th"></i>Документы в категории</h3>
        <ul class="latest-blog-posts">
            {foreach $result.object as $object}
                <li class="cf">
                    <div class="blog-icon">
                        <i class="fa fa-tags"></i>
                    </div>
                    <div class="post-details">
                        <h5><a href="{$object.uri}">{$object.pagetitle}</a>
                        </h5>
                    </div>
                </li>
                {*{$parent = $modx->getChildIds($object.id, 1)}*}
            {/foreach}
        </ul>
    </div>
    {*<div class="post-details">*}
    {*<h5><a href="blog.html#">Wheel of Time</a></h5>*}
    {*<span class="post-date">August 18, 2013</span>*}
    {*</div>*}
{/if}

