<?php
/**
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version 2014.11.1
 * @package kernel
 */
 
 
$error = false;

$http = eZHTTPTool::instance();
$module = $Params['Module']; 
 
$basket = eZBasket::currentBasket();
$basket->updatePrices();

$http->setSessionVariable( 'ProductItemCountList', $itemCountList );
$http->setSessionVariable( 'ProductItemIDList', $itemIDList );

$itemCountList = $http->sessionVariable( 'ProductItemCountList' );
$itemIDList = $http->sessionVariable( 'ProductItemIDList' );

$itemCountList = $http->postVariable( "ProductItemCountList" );
$itemIDList = $http->postVariable( "ProductItemIDList" );

// We should check item count, all itemcounts must be greater than 0
foreach ( $itemCountList as $itemCount )
{
    // If item count of product <= 0 we should show the error
    if ( !is_numeric( $itemCount ) or $itemCount < 0 )
    {
        $error = true;
    }
}

if (!is_numeric($itemCountList) || !is_numeric($itemIDList)) {
    $error = true;
}

if (!$error) {
    $http->setSessionVariable( 'ProductItemCountList', $itemCountList );
    $http->setSessionVariable( 'ProductItemIDList', $itemIDList );

    $itemCountList = $http->sessionVariable( 'ProductItemCountList' );
    $itemIDList = $http->sessionVariable( 'ProductItemIDList' );

    $operationResult = eZOperationHandler::execute( 'shop', 'updatebasket', array( 'item_count_list' => $itemCountList,
                                                                                   'item_id_list' => $itemIDList ) );
    $Result = array();
    $Result['pagelayout'] = '';
    $Result['content'] = 'Success';
} else {
    $Result = array();
    $Result['pagelayout'] = '';
    $Result['content'] = 'Error';    
}

#return $Result['content'];                                                                          
return print_r($http);

?>