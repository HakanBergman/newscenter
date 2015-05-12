<?php
 
$itemCountList = array(intval($_POST['itemCountList']));
$itemIDList = array(intval($_POST['itemIDList']));

if ($operationResult = eZOperationHandler::execute('shop', 'updatebasket', array( 'item_count_list' => $itemCountList, 'item_id_list' => $itemIDList))) {
    $Result = array();
    $Result['pagelayout'] = '';
    $Result['content'] = 'Success';
    return trim($Result['content']); 
}

?>