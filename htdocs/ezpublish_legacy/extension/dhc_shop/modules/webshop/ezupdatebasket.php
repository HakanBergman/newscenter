<?php
 
$error = false;

$http = eZHTTPTool::instance();
$module = $Params['Module']; 
 
$basket = eZBasket::currentBasket();
$basket->updatePrices();

$itemCountList = intval($_POST['itemCountList']);
$itemIDList = intval($_POST['itemIDList']);

// We should check item count, all itemcounts must be greater than 0
foreach ($itemCountList as $itemCount) {
    // If item count of product <= 0 we should show the error
    if (!is_numeric($itemCount) or $itemCount < 0)
    {
        $error = true;
    }
}

if (!$error) {

    $operationResult = eZOperationHandler::execute( 'shop', 'updatebasket', array( 'item_count_list' => $itemCountList,
                                                                                   'item_id_list' => $itemIDList ) );
                                                                                   
    $http->setSessionVariable( 'ProductItemCountList', $itemCountList );
    $http->setSessionVariable( 'ProductItemIDList', $itemIDList );
    
    $Result = array();
    $Result['pagelayout'] = '';
    $Result['content'] = $itemCountList;
    
} else {
    $Result = array();
    $Result['pagelayout'] = '';
    $Result['content'] = 'Error';    
}

$basket->updatePrices();

return $Result['content'];                                                                          

?>