<?php

/**
 * Look in the operator files for documentation on use and parameters definition.
 *
 * @var array $eZTemplateOperatorArray
 */
$eZTemplateOperatorArray = array();

/* Create Captcha */
$eZTemplateOperatorArray[] = array( 'script' => 'extension/dhc/autoloads/ezcreatecaptcha.php',
                                    'class' => 'eZCreateCaptcha',
                                    'operator_names' => array( 'ezcreatecaptcha' ) );

/* Create Email */
$eZTemplateOperatorArray[] = array( 'script' => 'extension/dhc/autoloads/ezcreateemail.php',
                                    'class' => 'eZCreateEmail',
                                    'operator_names' => array( 'ezcreateemail' ) );


?>
