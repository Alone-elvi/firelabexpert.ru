{$params=[
"parent" => 154,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1,
"summary" => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}


<div class="sidebar sb-right">
    {if $modx->resource->id != "154"}
        {include file="inc/common/get_sidebar_r_category.tpl"}
    {/if}
    <div class="sidebar-box">
        <h3><i class="circled fa fa-list"></i>Документы</h3>
        <nav>
            <ul class="sidebar-menu">
                {foreach $result.object as $object}
                    <li><i class="fa fa-angle-right"></i><a href="{$object.uri}">{$object.pagetitle}</a></li>
                {/foreach}
            </ul>
        </nav>
    </div><!-- end sidebar-box -->
    {*{include file="/inc/common/get_sidebar_r_category.tpl"}*}
</div><!-- end sidebar-box -->

