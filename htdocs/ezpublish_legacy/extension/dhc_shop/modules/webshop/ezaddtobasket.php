<?php

$http = eZHTTPTool::instance();
$basket = eZBasket::currentBasket();

$quantity = $_POST['quantity'];
$ObjectID = 331;
if (!is_numeric($quantity) or $quantity <= 0 ) { $quantity = 1; }
if (!is_numeric($ObjectID)) { $error = true; }
if (!eZContentObject::exists($ObjectID)) { $error = true; }


$object = eZContentObject::fetch($ObjectID);
if (!$object->canRead()) { $error = true; }
if (!$error) {
    $error = $basket->canAddProduct($object);
    if ($error !== eZError::SHOP_OK) { $error = true; }
}


$OptionList = $http->sessionVariable( "AddToBasket_OptionList_" . $ObjectID);
if (!$error) {
    $operationResult = eZOperationHandler::execute( 'shop', 'addtobasket', array( 'basket_id' => $basket->attribute('id'),
                                                                                  'object_id' => $ObjectID,
                                                                                  'quantity' => $quantity,
                                                                                  'option_list' => $OptionList));
    $Result['content'] =  null;
} else {
    $Result['content'] = null;
}

$Result['pagelayout'] = '';
return $Result;

?>