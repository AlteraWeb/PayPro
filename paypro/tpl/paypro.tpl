<!-- BEGIN: MAIN -->

<div class="top-title-area">
    <div class="container">
        <h1 class="title-page centerall">
           Профессиональный аккаунт
        </h1>
        <div class="clearfix"></div>
    </div>
</div>
<div class="gap"></div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{PRO_FORM_ACTION}" id="buy_pro" method="post">
    <input type="hidden" value="1" name="months">
    <!-- IF {PRO_FORM_USER_NAME} -->
    <tr>
        <td>{PHP.L.paypro_giftfor}:</td>
        <td>{PRO_FORM_USER_NAME}</td>
    </tr>
    <!-- ENDIF -->

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="row about_pro">
                <div class="col-md-12 text-center mb20">
                    <h2>С профессиональным аккаунтом вы получите:</h2>
                </div>
                <ul class="col-md-6">
                    <li>Увеличение рейтинга на 20%.</li>
                    <li>Вы в каталоге — выше остальных — в отдельной зоне PRO.</li>
                    <li>Можете загружать работы в ответах на проекты.</li>
                </ul>
                <ul class="col-md-6">
                    <li>Возможность размещения в каталоге фрилансеров по 5 специализациям.</li>
                    <li>Ваши ответы на проекты — выше остальных — в зоне ответов PRO.</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="gap"></div>
</div>
<div class="container">
    <div class="row row-wrap" id="masonry" style="position: relative; height: 1164px;">
        <div class="col-md-3 col-masonry">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 1 месяц
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <ul class="product-price-list">
                            <li>
                                <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_1} {PHP.cfg.payments.valuta}</span>
                            </li>
                            <li>
                                <span class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_1} {PHP.cfg.payments.valuta}</span>
                            </li>
                        </ul>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_1}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="1" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-masonry">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 3 месяца
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <ul class="product-price-list">
                            <li>
                                <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_3} {PHP.cfg.payments.valuta}</span>
                            </li>
                            <li>
                                <span class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_3} {PHP.cfg.payments.valuta}</span>
                            </li>
                        </ul>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_3}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="3" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-masonry">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 6 месяцев
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <ul class="product-price-list">
                            <li>
                                <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_6} {PHP.cfg.payments.valuta}</span>
                            </li>
                            <li>
                                <span class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_6} {PHP.cfg.payments.valuta}</span>
                            </li>
                        </ul>
                    </div>
                    <p class="product-location"><small>Скидка:</small> {PRO_FORM_PERIOD_DISCOUNT_6}%</p>
                </div>
                <div class="btn_buy_pro">
                    <a data-months="6" class="btn btn-primary">{PHP.L.paypro_buy}</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-masonry">
            <div class="product-thumb">
                <header class="product-header-pro">
                    PRO на 12 месяцев
                </header>
                <div class="product-inner">
                    <div class="product-meta">
                        <ul class="product-price-list">
                            <li>
                                <span class="label label-warning pro_price">{PRO_FORM_PERIOD_COST_12} {PHP.cfg.payments.valuta}</span>
                            </li>
                            <li>
                                <span class="product-old-price">{PRO_FORM_PERIOD_OLD_COST_12} {PHP.cfg.payments.valuta}</span>
                            </li>
                        </ul>
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