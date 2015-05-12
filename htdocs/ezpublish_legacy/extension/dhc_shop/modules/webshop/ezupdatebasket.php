<?php
 
$itemCountList = intval($_POST['itemCountList']);
$itemIDList = intval($_POST['itemIDList']);

$itemCountList = 5;
$itemIDList = 9;


    $http->setSessionVariable( 'ProductItemCountList', $itemCountList );
    $http->setSessionVariable( 'ProductItemIDList', $itemIDList );
    if ($operationResult = eZOperationHandler::execute( 'shop', 'updatebasket', array( 'item_count_list' => $itemCountList, 'item_id_list' => $itemIDList ) )) {
        #$Result = array();
        #$Result['pagelayout'] = '';
        #$Result['content'] = $itemIDList;
        echo "hit";
    }

#return $Result['content'];                                                                          

?>