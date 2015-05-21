<?php

/**
 * Look in the operator files for documentation on use and parameters definition.
 *
 * @var array $eZTemplateOperatorArray
 */
$eZTemplateOperatorArray = array();

/* Create Forecast */
$eZTemplateOperatorArray[] = array( 'script' => 'extension/dhc_yr_no/autoloads/ezcreateforecast.php',
                                    'class' => 'eZCreateForecast',
                                    'operator_names' => array( 'ezcreateforecast' ) );


?>
