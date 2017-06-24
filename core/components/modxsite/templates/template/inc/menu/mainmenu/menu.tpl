{* Главное меню *}

{block menu_params}

    {$params = [
    "outerRowTpl" => '@CODE <li[[+wf.id]]>
                        <li><a class="active-nav"
                           href="/">Главаня
                           [[+wf.wrapper]]
                        </li>',
                "rowTpl" => '@CODE <li>
                <a href="[[+wf.link]]" [[+wf.classes]] title="[[+wf.title]]" [[+wf.attributes]]>[[+wf.linktext]]<span>[[+wf.linktext]]</span></a>
                [[+wf.wrapper]]</li>',
"hereClass" => 'active-nav',
"lastClass" => '',
"firstClass" => '',
"innerClass" => 'dropdown',
"level" => '3'
]}

{/block}

{block menu_wrapper}
    <nav id="main-navigation" class="navigation cf">
        {snippet name="Wayfinder@MainMenu" params=$params as_tag=!$main_menu_is_cached}
    </nav>
{/block}
