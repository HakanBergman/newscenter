<?php


$itemCountList = array(intval($_POST['itemCountList']));
$itemIDList = array(intval($_POST['itemIDList']));

if (is_numeric($itemCountList[0]) && $itemCountList[0] > 0 && is_numeric($itemIDList[0]) && $itemIDList[0] > 0 && $_SERVER['REMOTE_ADDR'] == "217.78.29.220") {
    if ($operationResult = eZOperationHandler::execute('shop', 'updatebasket', array( 'item_count_list' => $itemCountList, 'item_id_list' => $itemIDList))) {
        $Result = array();
        $Result['pagelayout'] = '';
        $Result['content'] = 'Success';
        return trim($Result['content']); 
    }
}

?>