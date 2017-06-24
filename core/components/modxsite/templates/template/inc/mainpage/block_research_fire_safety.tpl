{$params=[
"parent" => 155,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1,
"summary" => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

<section class="content section-bg-4">

    <div class="container-center">

        <div class="section-title align-center">
            <h2>Сертификат пожарной безопасности на:</h2>
            <h3 class="sub-heading">Сертификация :</h3>
        </div>
            {$counter = 0}
            {foreach $result.object as $object}
                {if $counter%4 == 0}
                    <div class="col-row animated" data-animation="fadeInUp">
                {/if}
                <div class="feature-box one-fourth">
                    <div class="feature-box-title cf">
                        <div class="feature-box-icon">
                            <i class="fa fa-gear"></i>
                        </div>
                        <h4>{$object.pagetitle}</h4>
                    </div><!-- end feature-box-title -->
                    <p>{$object.summary|truncate:80:".....":true}</p>
                    <a class="button large-btn rounded" href="{$object.uri}">Перейти</a>
                </div>
                {if $counter%4 == 3}
                    </div>
                {/if}
                {$counter = $counter+1}

            {/foreach}

    </div><!-- end container-center -->
</section><!-- end content -->
