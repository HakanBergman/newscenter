<?php
// URI:       extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl
// Timestamp: 1422360663 (Tue Jan 27 13:11:03 CET 2015)
$oldSetArray_d00d01fecc898324d9e9a7141f6ee082 = isset( $setArray ) ? $setArray : array();
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

// def $latest_news
unset( $var );
$var = call_user_func_array( array( new eZContentFunctionCollection(), 'fetchObjectTree' ),
  array(     'parent_node_id' => "2",
    'sort_by' => array( "published",
       false ),
    'only_translated' => false,
    'language' => false,
    'offset' => false,
    'limit' => "7",
    'depth' => false,
    'depth_operator' => false,
    'class_id' => false,
    'attribute_filter' => array( array( "name",
              "!=",
              "footer" ) ),
    'extended_attribute_filter' => false,
    'class_filter_type' => "include",
    'class_filter_array' => array( "article" ),
    'group_by' => false,
    'main_node_only' => true,
    'ignore_visibility' => false,
    'limitation' => null,
    'as_object' => null,
    'objectname_filter' => null,
    'load_data_map' => null ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'latest_news', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'latest_news' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 7,
    1 => 96,
    2 => 707,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl',
) );
    $tpl->setVariable( 'latest_news', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'latest_news', $var, $rootNamespace );
}

$text .= '<h3>Latest News</h3>
<ul>
    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10 ) ) $fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10 = array();
$fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10[] = compact( 'fe_array_be77a4cc647c2320c22876e790ebd118_10', 'fe_array_keys_be77a4cc647c2320c22876e790ebd118_10', 'fe_n_items_be77a4cc647c2320c22876e790ebd118_10', 'fe_n_items_processed_be77a4cc647c2320c22876e790ebd118_10', 'fe_i_be77a4cc647c2320c22876e790ebd118_10', 'fe_key_be77a4cc647c2320c22876e790ebd118_10', 'fe_val_be77a4cc647c2320c22876e790ebd118_10', 'fe_offset_be77a4cc647c2320c22876e790ebd118_10', 'fe_max_be77a4cc647c2320c22876e790ebd118_10', 'fe_reverse_be77a4cc647c2320c22876e790ebd118_10', 'fe_first_val_be77a4cc647c2320c22876e790ebd118_10', 'fe_last_val_be77a4cc647c2320c22876e790ebd118_10' );
unset( $fe_array_be77a4cc647c2320c22876e790ebd118_10 );
unset( $fe_array_be77a4cc647c2320c22876e790ebd118_10 );
$fe_array_be77a4cc647c2320c22876e790ebd118_10 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'latest_news', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['latest_news'] : null;
if (! isset( $fe_array_be77a4cc647c2320c22876e790ebd118_10 ) ) $fe_array_be77a4cc647c2320c22876e790ebd118_10 = NULL;
while ( is_object( $fe_array_be77a4cc647c2320c22876e790ebd118_10 ) and method_exists( $fe_array_be77a4cc647c2320c22876e790ebd118_10, 'templateValue' ) )
    $fe_array_be77a4cc647c2320c22876e790ebd118_10 = $fe_array_be77a4cc647c2320c22876e790ebd118_10->templateValue();

$fe_array_keys_be77a4cc647c2320c22876e790ebd118_10 = is_array( $fe_array_be77a4cc647c2320c22876e790ebd118_10 ) ? array_keys( $fe_array_be77a4cc647c2320c22876e790ebd118_10 ) : array();
$fe_n_items_be77a4cc647c2320c22876e790ebd118_10 = count( $fe_array_keys_be77a4cc647c2320c22876e790ebd118_10 );
$fe_n_items_processed_be77a4cc647c2320c22876e790ebd118_10 = 0;
$fe_offset_be77a4cc647c2320c22876e790ebd118_10 = 0;
$fe_max_be77a4cc647c2320c22876e790ebd118_10 = $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 - $fe_offset_be77a4cc647c2320c22876e790ebd118_10;
$fe_reverse_be77a4cc647c2320c22876e790ebd118_10 = false;
if ( $fe_offset_be77a4cc647c2320c22876e790ebd118_10 < 0 || $fe_offset_be77a4cc647c2320c22876e790ebd118_10 >= $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 )
{
    $fe_offset_be77a4cc647c2320c22876e790ebd118_10 = ( $fe_offset_be77a4cc647c2320c22876e790ebd118_10 < 0 ) ? 0 : $fe_n_items_be77a4cc647c2320c22876e790ebd118_10;
    if ( $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 || $fe_offset_be77a4cc647c2320c22876e790ebd118_10 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_be77a4cc647c2320c22876e790ebd118_10'. Array count: $fe_n_items_be77a4cc647c2320c22876e790ebd118_10");   
}
}
if ( $fe_max_be77a4cc647c2320c22876e790ebd118_10 < 0 || $fe_offset_be77a4cc647c2320c22876e790ebd118_10 + $fe_max_be77a4cc647c2320c22876e790ebd118_10 > $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 )
{
    if ( $fe_max_be77a4cc647c2320c22876e790ebd118_10 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_be77a4cc647c2320c22876e790ebd118_10");
    $fe_max_be77a4cc647c2320c22876e790ebd118_10 = $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 - $fe_offset_be77a4cc647c2320c22876e790ebd118_10;
}
if ( $fe_reverse_be77a4cc647c2320c22876e790ebd118_10 )
{
    $fe_first_val_be77a4cc647c2320c22876e790ebd118_10 = $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 - 1 - $fe_offset_be77a4cc647c2320c22876e790ebd118_10;
    $fe_last_val_be77a4cc647c2320c22876e790ebd118_10  = 0;
}
else
{
    $fe_first_val_be77a4cc647c2320c22876e790ebd118_10 = $fe_offset_be77a4cc647c2320c22876e790ebd118_10;
    $fe_last_val_be77a4cc647c2320c22876e790ebd118_10  = $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 - 1;
}
// foreach
for ( $fe_i_be77a4cc647c2320c22876e790ebd118_10 = $fe_first_val_be77a4cc647c2320c22876e790ebd118_10; $fe_n_items_processed_be77a4cc647c2320c22876e790ebd118_10 < $fe_max_be77a4cc647c2320c22876e790ebd118_10 && ( $fe_reverse_be77a4cc647c2320c22876e790ebd118_10 ? $fe_i_be77a4cc647c2320c22876e790ebd118_10 >= $fe_last_val_be77a4cc647c2320c22876e790ebd118_10 : $fe_i_be77a4cc647c2320c22876e790ebd118_10 <= $fe_last_val_be77a4cc647c2320c22876e790ebd118_10 ); $fe_reverse_be77a4cc647c2320c22876e790ebd118_10 ? $fe_i_be77a4cc647c2320c22876e790ebd118_10-- : $fe_i_be77a4cc647c2320c22876e790ebd118_10++ )
{
$fe_key_be77a4cc647c2320c22876e790ebd118_10 = $fe_array_keys_be77a4cc647c2320c22876e790ebd118_10[$fe_i_be77a4cc647c2320c22876e790ebd118_10];
$fe_val_be77a4cc647c2320c22876e790ebd118_10 = $fe_array_be77a4cc647c2320c22876e790ebd118_10[$fe_key_be77a4cc647c2320c22876e790ebd118_10];
$vars[$rootNamespace]['news'] = $fe_val_be77a4cc647c2320c22876e790ebd118_10;
$text .= '        <li><a href="';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'news', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['news'] : null;
$var2 = compiledFetchAttribute( $var1, 'url_alias' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'news', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['news'] : null;
$var2 = compiledFetchAttribute( $var1, 'name' );
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
$fe_n_items_processed_be77a4cc647c2320c22876e790ebd118_10++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10 ) ) extract( array_pop( $fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10 ) );

else
{

unset( $fe_array_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_array_keys_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_n_items_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_n_items_processed_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_i_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_key_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_val_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_offset_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_max_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_reverse_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_first_val_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_last_val_be77a4cc647c2320c22876e790ebd118_10 );

unset( $fe_variable_stack_be77a4cc647c2320c22876e790ebd118_10 );

}

// foreach ends
$text .= '</ul>';
// undef $latest_news
$tpl->unsetLocalVariable( 'latest_news', $rootNamespace );


$setArray = $oldSetArray_d00d01fecc898324d9e9a7141f6ee082;
$tpl->Level--;
?>
