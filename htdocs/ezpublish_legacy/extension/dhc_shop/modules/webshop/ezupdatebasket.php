<?php
/**
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version 2014.11.1
 * @package kernel
 */
 
$http = eZHTTPTool::instance();
$basket = eZBasket::currentBasket();
$module = $Params['Module'];

$itemCountList = $http->sessionVariable( 'ProductItemCountList' );
$itemIDList = $http->sessionVariable( 'ProductItemIDList' );

$operationResult = eZOperationHandler::execute( 'shop', 'updatebasket', array( 'item_count_list' => $itemCountList,
                                                                               'item_id_list' => $itemIDList ) );
                                                                               
$module->redirectTo( '/shop/basket/' );

?>