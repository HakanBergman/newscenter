<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_header_languages.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_header_languages.tpl
// Timestamp: 1422360663 (Tue Jan 27 13:11:03 CET 2015)
$oldSetArray_cd9a1455717304943cfc283f77a407a9 = isset( $setArray ) ? $setArray : array();
$setArray = array();
$tpl->Level++;
if ( $tpl->Level > 40 )
{
$text = $tpl->MaxLevelWarning;$tpl->Level--;
return;
}
$eZTemplateCompilerCodeDate = 1074699607;
if ( !defined( 'EZ_TEMPLATE_COMPILER_COMMON_CODE' ) )
include_once( 'var/ezdemo_site/cache/template/compiled/common.php' );

// def $lang_selector
if ( $tpl->hasVariable( 'lang_selector', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'lang_selector' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 2,
    1 => 33,
    2 => 63,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_header_languages.tpl',
) );
    $tpl->setVariable( 'lang_selector', array (
), $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'lang_selector', array (
), $rootNamespace );
}

// def $avail_translation
if ( $tpl->hasVariable( 'avail_translation', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'avail_translation' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 2,
    1 => 33,
    2 => 63,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_header_languages.tpl',
) );
    $tpl->setVariable( 'avail_translation', array (
), $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'avail_translation', array (
), $rootNamespace );
}

$text .= '<div id="lang-selector" class="transition-showed">';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond2 );
$namespace = $rootNamespace;
if ( $namespace == '' )
    $namespace = "DesignKeys";
else
    $namespace .= ':DesignKeys';
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'used', $vars[$namespace] ) ) ? $vars[$namespace]['used'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'url_alias' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
$if_cond1 = isset( $if_cond2 );unset( $if_cond2 );
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond3 );
$namespace = $rootNamespace;
if ( $namespace == '' )
    $namespace = "DesignKeys";
else
    $namespace .= ':DesignKeys';
unset( $if_cond3 );
$if_cond3 = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'used', $vars[$namespace] ) ) ? $vars[$namespace]['used'] : null;
$if_cond4 = compiledFetchAttribute( $if_cond3, 'url_alias' );
unset( $if_cond3 );
$if_cond3 = $if_cond4;
if (! isset( $if_cond3 ) ) $if_cond3 = NULL;
while ( is_object( $if_cond3 ) and method_exists( $if_cond3, 'templateValue' ) )
    $if_cond3 = $if_cond3->templateValue();
$if_cond3Data = array( 'value' => $if_cond3 );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $if_cond3Data, false, false );
$if_cond3 = $if_cond3Data['value'];
unset( $if_cond3Data );
if (! isset( $if_cond3 ) ) $if_cond3 = NULL;
while ( is_object( $if_cond3 ) and method_exists( $if_cond3, 'templateValue' ) )
    $if_cond3 = $if_cond3->templateValue();
$if_cond2 = ( ( $if_cond3 ) >= ( 1 ) );
unset( $if_cond3 );
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
if ( !$if_cond1 )
    $if_cond = false;
else if ( !$if_cond2 )
    $if_cond = false;
else
    $if_cond = $if_cond2;
unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    ';
unset( $var );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'language_switcher',
                       array (
  0 => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => 'DesignKeys',
        1 => 2,
        2 => 'used',
      ),
      2 => false,
    ),
    1 => 
    array (
      0 => 5,
      1 => 
      array (
        0 => 
        array (
          0 => 3,
          1 => 'url_alias',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( array_key_exists( $currentNamespace, $vars ) && array_key_exists( 'avail_translation', $vars[$currentNamespace] ) )
{
    $vars[$currentNamespace]['avail_translation'] = $var;
    unset( $var );
}
}
else
{
$text .= '    ';
unset( $var );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'language_switcher',
                       array (
  0 => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'site',
      ),
      2 => false,
    ),
    1 => 
    array (
      0 => 5,
      1 => 
      array (
        0 => 
        array (
          0 => 3,
          1 => 'uri',
          2 => false,
        ),
      ),
      2 => false,
    ),
    2 => 
    array (
      0 => 5,
      1 => 
      array (
        0 => 
        array (
          0 => 3,
          1 => 'original_uri',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( array_key_exists( $currentNamespace, $vars ) && array_key_exists( 'avail_translation', $vars[$currentNamespace] ) )
{
    $vars[$currentNamespace]['avail_translation'] = $var;
    unset( $var );
}
}
unset( $if_cond );
// if ends

// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'avail_translation', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['avail_translation'] : null;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond1Data = array( 'value' => $if_cond1 );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $if_cond1Data, false, false );
$if_cond1 = $if_cond1Data['value'];
unset( $if_cond1Data );
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond = ( ( $if_cond1 ) > ( 1 ) );
unset( $if_cond1 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) ) $fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = array();
$fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6[] = compact( 'fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_array_keys_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_n_items_processed_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_key_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_first_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6', 'fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6' );
unset( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );
unset( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );
$fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'avail_translation', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['avail_translation'] : null;
if (! isset( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) ) $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = NULL;
while ( is_object( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) and method_exists( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6, 'templateValue' ) )
    $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6->templateValue();

$fe_array_keys_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = is_array( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) ? array_keys( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) : array();
$fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = count( $fe_array_keys_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );
$fe_n_items_processed_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = 0;
$fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = 0;
$fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 - $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
$fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = false;
if ( $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < 0 || $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 >= $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 )
{
    $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = ( $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < 0 ) ? 0 : $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
    if ( $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 || $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6'. Array count: $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6");   
}
}
if ( $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < 0 || $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 + $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 > $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 )
{
    if ( $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6");
    $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 - $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
}
if ( $fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 )
{
    $fe_first_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 - 1 - $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
    $fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6  = 0;
}
else
{
    $fe_first_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
    $fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6  = $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 - 1;
}
// foreach
for ( $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_first_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6; $fe_n_items_processed_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 < $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 && ( $fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ? $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 >= $fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 : $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 <= $fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ); $fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ? $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6-- : $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6++ )
{
$fe_key_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_array_keys_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6[$fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6];
$fe_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 = $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6[$fe_key_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6];
$vars[$rootNamespace]['lang'] = $fe_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
$vars[$rootNamespace]['siteaccess'] = $fe_key_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6;
$text .= '        ';
if ( !isset( $textStack ) )
    $textStack = array();
$textStack[] = $text;
$text = '';
$text .= '        ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'siteaccess', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['siteaccess'] : null;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'access_type', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['access_type'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'name' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
$if_cond = ( ( $if_cond1 ) == ( $if_cond2 ) );
unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '            <li class="current"><a href="#" style="background:url(';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var1 = compiledFetchAttribute( $var, 'locale' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'flag_icon',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ') no-repeat 5px center">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var2 = compiledFetchAttribute( $var1, 'text' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</a></li>
        ';
}
else
{
$text .= '            <li><a href=';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var2 = compiledFetchAttribute( $var1, 'url' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var1 = '"' . $var1 . '"';
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= ' style="background:url(';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var1 = compiledFetchAttribute( $var, 'locale' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'flag_icon',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ') no-repeat 5px center">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var2 = compiledFetchAttribute( $var1, 'text' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</a></li>
        ';
}
unset( $if_cond );
// if ends

$text .= '        ';
$blockText = $text;
unset( $blockData );
unset( $blockData );
$blockData = ( array_key_exists( $currentNamespace, $vars ) and array_key_exists( 'lang_selector', $vars[$currentNamespace] ) ) ? $vars[$currentNamespace]['lang_selector'] : null;
if (! isset( $blockData ) ) $blockData = NULL;
while ( is_object( $blockData ) and method_exists( $blockData, 'templateValue' ) )
    $blockData = $blockData->templateValue();

if ( is_null ( $blockData ) ) $blockData = array();
if ( is_array ( $blockData ) ) $blockData[] = $blockText;
else eZDebug::writeError( "Variable 'lang_selector' is already in use." );
$vars[$currentNamespace]['lang_selector'] = $blockData;
unset( $blockData );

unset( $blockText );

$text = array_pop( $textStack );
$text .= '        ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'siteaccess', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['siteaccess'] : null;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'access_type', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['access_type'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'name' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
$if_cond = ( ( $if_cond1 ) == ( $if_cond2 ) );
unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '            <a href="#lang-selector" class="current-lang" style="background:url(';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var1 = compiledFetchAttribute( $var, 'locale' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'flag_icon',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ') no-repeat 5px center">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang'] : null;
$var2 = compiledFetchAttribute( $var1, 'text' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '&nbsp;↴</a>
        ';
}
unset( $if_cond );
// if ends

$text .= '    ';
$fe_n_items_processed_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) ) extract( array_pop( $fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 ) );

else
{

unset( $fe_array_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_array_keys_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_n_items_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_n_items_processed_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_i_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_key_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_offset_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_max_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_reverse_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_first_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_last_val_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

unset( $fe_variable_stack_78c944f0f6c9dc6a1a11dbbfecf9cfcb_6 );

}

// foreach ends
$text .= '
    <ul class="lang-select">
    ';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'lang_selector', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['lang_selector'] : null;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = implode( "", $var1 );unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '
    </ul>';
}
unset( $if_cond );
// if ends

// undef $lang_selector
$tpl->unsetLocalVariable( 'lang_selector', $rootNamespace );

$text .= '</div>
';

$setArray = $oldSetArray_cd9a1455717304943cfc283f77a407a9;
$tpl->Level--;
?>
