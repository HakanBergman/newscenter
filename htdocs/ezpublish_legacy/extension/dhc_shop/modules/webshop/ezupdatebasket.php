<?php
 
$itemCountList = array(intval($_POST['itemCountList']));
$itemIDList = array(intval($_POST['itemIDList']));

print_r($itemCountList);
print_r($itemIDList);

$itemCountList = array(intval(4));
$itemIDList = array(intval(9));

print_r($itemCountList);
print_r($itemIDList);

#$http->setSessionVariable( 'ProductItemCountList', $itemCountList );
#$http->setSessionVariable( 'ProductItemIDList', $itemIDList );

$operationResult = eZOperationHandler::execute('shop', 'updatebasket', array( 'item_count_list' => $itemCountList, 'item_id_list' => $itemIDList));
    #$Result = array();
    #$Result['pagelayout'] = '';
    #$Result['content'] = $itemIDList;
#return $Result['content'];                                                                          

?>