<?php

$http = eZHTTPTool::instance();
$module = $Params['Module'];
$basket = eZBasket::currentBasket();
$basket->updatePrices();

$Result['pagelayout'] = '';
$Result['content'] = null;

$quantity = (int)$_POST['quantity'];
$ObjectID = (int)$_POST['objectid'];
if (!is_numeric($quantity) or $quantity <= 0) { $quantity = 1; }
if (!is_numeric($ObjectID)) { return $Result; }
if (!eZContentObject::exists($ObjectID)) { return $Result; }


$object = eZContentObject::fetch($ObjectID);
if (!$object->canRead()) { return $Result; }

$error = $basket->canAddProduct($object);
if ($error !== eZError::SHOP_OK) { return $Result; }

$optionList = array();
$operationResult = eZOperationHandler::execute( 'shop', 'addtobasket', array( 'basket_id' => $basket->attribute('id'),
                                                                                  'object_id' => $ObjectID,
                                                                                  'quantity' => $quantity,
                                                                                  'option_list' => $OptionList));                                                                                  
$Result['content'] =  trim('Success');
return $Result;

?>