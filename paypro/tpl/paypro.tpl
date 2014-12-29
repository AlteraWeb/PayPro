<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{PRO_FORM_ACTION}" id="buy_pro" method="post">
    <input type="hidden" value="1" name="months">
    <!-- IF {PRO_FORM_USER_NAME} -->
    {PHP.L.paypro_giftfor}: {PRO_FORM_USER_NAME}
    <!-- ENDIF -->
<div class="container">
    <div class="row">
        <div class="span12"><h1>{PHP.L.paypro_buypro_title}</h1></div>
    </div>
    <div class="row">
        <div class="span2 well">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 1 месяц
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_1} {PHP.cfg.payments.valuta}</span>
                        <s class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_1} {PHP.cfg.payments.valuta}</s>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_1}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="1" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="span2 well">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 3 месяца
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_3} {PHP.cfg.payments.valuta}</span>
                        <s class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_3} {PHP.cfg.payments.valuta}</s>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_3}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="3" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="span2 well">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 6 месяцев
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_6} {PHP.cfg.payments.valuta}</span>
                        <s class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_6} {PHP.cfg.payments.valuta}</s>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_6}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="6" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="span2 well">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 12 месяцев
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_12} {PHP.cfg.payments.valuta}</span>
                        <s class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_12} {PHP.cfg.payments.valuta}</s>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_12}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="12" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<script>
    $('.btn_buy_pro a').click(function (){
        $('input[name="months"]').val($(this).attr('data-months'));
        $('#buy_pro').submit();
        return false;
    });
</script>
<!-- END: MAIN -->
