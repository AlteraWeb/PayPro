<?php

/* ====================
  [BEGIN_COT_EXT]
 * Hooks=standalone
  [END_COT_EXT]
  ==================== */

defined('COT_CODE') && defined('COT_PLUG') or die('Wrong URL');

require_once cot_incfile('paypro', 'plug');

list($auth_read, $auth_write, $auth_admin) = cot_auth('plug', 'paypro');
cot_block($auth_write);

$id = cot_import('id', 'G', 'INT');

$discounts = explode(";", $cfg['plugin']['paypro']['discounts']);
$discount = array();
foreach ($discounts as $_dis){
    list($m, $_discount) = explode("|", $_dis);
    $discount[$m] = $_discount;
}
       
if ($a == 'buy')
{
	$months = cot_import('months', 'P', 'INT');
	
	cot_check(empty($months), 'paypro_error_months');
	
	if(!empty($id) && $usr['id'] != $id)
	{
		$user = $db->query("SELECT * FROM $db_users WHERE user_id = ? LIMIT 1", array($id))->fetch();
		cot_check(empty($user), 'paypro_error_user');
	}
	
	if (!cot_error_found())
	{
                $discount = ($cfg['plugin']['paypro']['cost'] / 100) * $discount[$months];
		$summ = $months * ($cfg['plugin']['paypro']['cost'] - $discount);
		$options['time'] = $months * 30 * 24 * 60 * 60;
		$options['desc'] = (!empty($id)) ? $L['paypro_giftpro_paydesc'] . $user['user_name'] : $L['paypro_buypro_paydesc'];
		$options['code'] = (!empty($id) && $usr['id'] != $id) ? $id : $usr['id'];
		
		cot_payments_create_order('pro', $summ, $options);
	}
}

$t = new XTemplate(cot_tplfile('paypro', 'plug'));

cot_display_messages($t);

for ($i = 1; $i <= 12; $i++) {
    $minus = ($cfg['plugin']['paypro']['cost'] / 100) * $discount[$i];
    $t->assign('PRO_FORM_PERIOD_COST_'.$i, ($cfg['plugin']['paypro']['cost'] - $minus) * $i);
    $t->assign('PRO_FORM_PERIOD_OLD_COST_'.$i, ($cfg['plugin']['paypro']['cost']) * $i);
    $t->assign('PRO_FORM_PERIOD_DISCOUNT_'.$i, $discount[$i]);
}

$t->assign(array(
	'PRO_FORM_ACTION' => cot_url('plug', 'e=paypro&a=buy&id=' . $id),
	'PRO_FORM_PERIOD' => cot_selectbox('', 'months', range(1, 12), range(1, 12), false), 
));

if(!empty($id))
{
	$t->assign(cot_generate_usertags($id, 'PRO_FORM_USER_'));
}
?>