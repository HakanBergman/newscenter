<?php
 
$itemCountList = array(intval($_POST['itemCountList']));
$itemIDList = array(intval($_POST['itemIDList']));

print_r($itemCountList);


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