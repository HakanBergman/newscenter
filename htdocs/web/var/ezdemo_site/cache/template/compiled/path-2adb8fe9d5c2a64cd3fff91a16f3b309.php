<?php
// URI:       design:parts/path.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/parts/path.tpl
// Timestamp: 1422360663 (Tue Jan 27 13:11:03 CET 2015)
$oldSetArray_a7d484bbae1ef0085b00aa5a3190c6d3 = isset( $setArray ) ? $setArray : array();
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

$text .= '<!-- Path content: START -->
<div class="container">
    <ul class="breadcrumb">
    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9 ) ) $fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9 = array();
$fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9[] = compact( 'fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_array_keys_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_n_items_processed_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_key_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_val_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_first_val_2f462683b467a70e453eb7bf7bd7b4d4_9', 'fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9' );
unset( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 );
unset( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 );
$fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'pagedata', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['pagedata'] : null;
$fe_array_2f462683b467a70e453eb7bf7bd7b4d4_91 = compiledFetchAttribute( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9, 'path_array' );
unset( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 );
$fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_91;
if (! isset( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 ) ) $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 = NULL;
while ( is_object( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 ) and method_exists( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9, 'templateValue' ) )
    $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9->templateValue();

$fe_array_keys_2f462683b467a70e453eb7bf7bd7b4d4_9 = is_array( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 ) ? array_keys( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 ) : array();
$fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 = count( $fe_array_keys_2f462683b467a70e453eb7bf7bd7b4d4_9 );
$fe_n_items_processed_2f462683b467a70e453eb7bf7bd7b4d4_9 = 0;
$fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 = 0;
$fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 - $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9;
$fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9 = false;
if ( $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 < 0 || $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 >= $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 )
{
    $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 = ( $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 < 0 ) ? 0 : $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9;
    if ( $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 || $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9'. Array count: $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9");   
}
}
if ( $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 < 0 || $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 + $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 > $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 )
{
    if ( $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9");
    $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 - $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9;
}
if ( $fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9 )
{
    $fe_first_val_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 - 1 - $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9;
    $fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9  = 0;
}
else
{
    $fe_first_val_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9;
    $fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9  = $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 - 1;
}
// foreach
for ( $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_first_val_2f462683b467a70e453eb7bf7bd7b4d4_9; $fe_n_items_processed_2f462683b467a70e453eb7bf7bd7b4d4_9 < $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 && ( $fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9 ? $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9 >= $fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9 : $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9 <= $fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9 ); $fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9 ? $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9-- : $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9++ )
{
$fe_key_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_array_keys_2f462683b467a70e453eb7bf7bd7b4d4_9[$fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9];
$fe_val_2f462683b467a70e453eb7bf7bd7b4d4_9 = $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9[$fe_key_2f462683b467a70e453eb7bf7bd7b4d4_9];
$vars[$rootNamespace]['path'] = $fe_val_2f462683b467a70e453eb7bf7bd7b4d4_9;
$text .= '    ';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'path', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['path'] : null;
$if_cond1 = compiledFetchAttribute( $if_cond, 'url' );
unset( $if_cond );
$if_cond = $if_cond1;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '        <li>
            <a href=';
unset( $var );
unset( $var1 );
unset( $var2 );
unset( $var3 );
unset( $var3 );
$var3 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'path', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['path'] : null;
$var4 = compiledFetchAttribute( $var3, 'url_alias' );
unset( $var3 );
$var3 = $var4;
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
$var2 = isset( $var3 );unset( $var3 );
if (! isset( $var2 ) ) $var2 = NULL;
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
if ( $var2 )
{
    unset( $var3 );
unset( $var3 );
$var3 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( "path", $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]["path"] : null;
$var4 = compiledFetchAttribute( $var3, "url_alias" );
unset( $var3 );
$var3 = $var4;
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();

    $var1 = $var3;
}
else
{
    unset( $var4 );
unset( $var4 );
$var4 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( "path", $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]["path"] : null;
$var5 = compiledFetchAttribute( $var4, "url" );
unset( $var4 );
$var4 = $var5;
if (! isset( $var4 ) ) $var4 = NULL;
while ( is_object( $var4 ) and method_exists( $var4, 'templateValue' ) )
    $var4 = $var4->templateValue();
while ( is_object( $var4 ) and method_exists( $var4, 'templateValue' ) )
    $var4 = $var4->templateValue();

    $var1 = $var4;
}
unset( $var2, $var3, $var4 );
if (! isset( $var1 ) ) $var1 = NULL;
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

$text .= '>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'path', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['path'] : null;
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

$text .= '</a> <span class="divider">&raquo;</span>
        </li>
    ';
}
else
{
$text .= '        <li class="active">
            ';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'path', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['path'] : null;
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

$text .= '
        </li>
    ';
}
unset( $if_cond );
// if ends

$text .= '    ';
$fe_n_items_processed_2f462683b467a70e453eb7bf7bd7b4d4_9++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9 ) ) extract( array_pop( $fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9 ) );

else
{

unset( $fe_array_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_array_keys_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_n_items_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_n_items_processed_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_i_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_key_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_val_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_offset_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_max_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_reverse_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_first_val_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_last_val_2f462683b467a70e453eb7bf7bd7b4d4_9 );

unset( $fe_variable_stack_2f462683b467a70e453eb7bf7bd7b4d4_9 );

}

// foreach ends
$text .= '    </ul>
</div>
<!-- Path content: END -->
';

$setArray = $oldSetArray_a7d484bbae1ef0085b00aa5a3190c6d3;
$tpl->Level--;
?>
