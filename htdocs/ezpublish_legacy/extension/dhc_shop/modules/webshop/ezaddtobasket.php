<?php

print_r($basket);

/*
$quantity = $_POST['quantity'];
if (!is_numeric($quantity) or $quantity <= 0 ) { $quantity = 1; }
if (!is_numeric($ObjectID)) { $error = true; }
if (!eZContentObject::exists($ObjectID)) { $error = true; }

$object = eZContentObject::fetch( $ObjectID );
if (!$object->canRead()) { $error = true; }

$error = $basket->canAddProduct( $object );
if ($error !== eZError::SHOP_OK) { $error = true; }

$OptionList = $http->sessionVariable( "AddToBasket_OptionList_" . $ObjectID);
$operationResult = eZOperationHandler::execute( 'shop', 'addtobasket', array( 'basket_id' => $basket->attribute('id'),
                                                                              'object_id' => $ObjectID,
                                                                              'quantity' => $quantity,
                                                                              'option_list' => $OptionList));
                                                                              
*/

#$Result['content'] = $resultContent;
#return $Result;

?>