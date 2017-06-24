<footer id="footer" class="content">
    <div class="footer-main container-center">
        <div class="col-row">
            <div class="one-half">
                <div class="logo-bottom">
                    <a href="\">
                        <img src="{$pre_template_url}img/logo/logo-tf-footer.png" alt="Firelabexpert"/>
                    </a>
                </div><!-- end logo -->
                <p>Центр по сертификации продукции в области пожарной безопасности</p>

                <div class="align-center">
                    <ul class="social-links-square-2 cf">
                        <li title="Facebook"><a href="https://www.facebook.com/groups/419136781760788/"><i
                                        class="fa fa-facebook"></i></a></li>
                        <li title="Vk"><a href="https://vk.com/firelab.expert"><i class="fa fa-vk"></i></a></li>
                        {*<li title="Twitter"><a href="index-ver-2.html#"><i class="fa fa-twitter"></i></a></li>*}
                    </ul>
                </div>
            </div><!-- end  -->

            <div class="contact-info one-half cf align-center">
                <h4>Контакты</h4>

                <strong>Адрес:</strong> <br/>
                <div>{include file="inc/contacts/address.tpl"}</div>
                <br/>

                <strong>Телефон:</strong>
                <div>{include file="inc/contacts/phone.tpl"}</div>
                <br/>
                <br/>

                <strong>E-mail:</strong> <a href="mailto:{include file="inc/contacts/e-mail.tpl"}"></a>
                <div>{include file="inc/contacts/e-mail.tpl"}</div>
                <br/>
            </div><!-- end  -->

        </div><!-- end col-row -->
    </div><!-- end footer-main -->
    <div class="footer-bottom container-center cf">

        <div class="bottom-left">
            <p class="copyright">Copyright &copy; {$smarty.now|date_format: "%Y"} Firelabexpert</p>
        </div><!-- end bottom-left -->

        <div class="bottom-right">
        </div><!-- end bottom-right -->

    </div><!-- end footer-bottom -->
</footer>
