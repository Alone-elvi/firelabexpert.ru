{$params=[
"parent" => 154,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1,
"summary" => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
<section class="content">
    <div class="container-center">
        <br>
    </div>
</section>
<section class="content">
    <div class="container-center">

        <div class="tagline col-row animated" data-animation="fadeInUp">

            {foreach $result.object as $object}
                <div class="one-fifth">
                    <div class="content-box cog-tl">
                        <div class="content-box-icon">
                            <i class="fa fa-pencil-square-o"></i>
                        </div><!-- end content-box-icon -->

                        <div class="box-title">
                            <h3>{$object.pagetitle}</h3>
                            <span class="content-box-subtitle"></span>
                        </div><!-- end box-title -->

                        {*<p>{$object.summary}</p>*}

                        <a class="button small-btn" href="{$object.uri}">Перейти</a>

                    </div><!-- end content-box -->
                </div>
                <!-- end box -->
            {/foreach}
        </div>
    </div>
</section>
