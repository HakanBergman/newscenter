<?php
// URI:       design:loginpagelayout.tpl
// Filename:  design/admin/templates/loginpagelayout.tpl
// Timestamp: 1416144919 (Sun Nov 16 14:35:19 CET 2014)
$oldSetArray_e881c41c09513d04f09dc31661ac56cd = isset( $setArray ) ? $setArray : array();
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

$text .= '<!DOCTYPE html>
<html lang="';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'site', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['site'] : null;
$var2 = compiledFetchAttribute( $var1, 'http_equiv' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'Content-language' );
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

$text .= '">
<head>';
// def $admin_theme
unset( $var );
$var = eZPreferences::value( "admin_theme" );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'admin_theme', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'admin_theme' is already defined.", array (
  0 => 
  array (
    0 => 4,
    1 => 0,
    2 => 79,
  ),
  1 => 
  array (
    0 => 4,
    1 => 48,
    2 => 127,
  ),
  2 => 'design/admin/templates/loginpagelayout.tpl',
) );
    $tpl->setVariable( 'admin_theme', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'admin_theme', $var, $rootNamespace );
}

unset( $cacheKeys );
unset( $cacheKeys1 );
unset( $cacheKeys1 );
$cacheKeys1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'navigation_part', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['navigation_part'] : null;
$cacheKeys2 = compiledFetchAttribute( $cacheKeys1, 'identifier' );
unset( $cacheKeys1 );
$cacheKeys1 = $cacheKeys2;
if (! isset( $cacheKeys1 ) ) $cacheKeys1 = NULL;
while ( is_object( $cacheKeys1 ) and method_exists( $cacheKeys1, 'templateValue' ) )
    $cacheKeys1 = $cacheKeys1->templateValue();
while ( is_object( $cacheKeys1 ) and method_exists( $cacheKeys1, 'templateValue' ) )
    $cacheKeys1 = $cacheKeys1->templateValue();
unset( $cacheKeys2 );
unset( $cacheKeys2 );
$cacheKeys2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'ui_context', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['ui_context'] : null;
if (! isset( $cacheKeys2 ) ) $cacheKeys2 = NULL;
while ( is_object( $cacheKeys2 ) and method_exists( $cacheKeys2, 'templateValue' ) )
    $cacheKeys2 = $cacheKeys2->templateValue();
while ( is_object( $cacheKeys2 ) and method_exists( $cacheKeys2, 'templateValue' ) )
    $cacheKeys2 = $cacheKeys2->templateValue();
unset( $cacheKeys3 );
unset( $cacheKeys3 );
$cacheKeys3 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'ui_component', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['ui_component'] : null;
if (! isset( $cacheKeys3 ) ) $cacheKeys3 = NULL;
while ( is_object( $cacheKeys3 ) and method_exists( $cacheKeys3, 'templateValue' ) )
    $cacheKeys3 = $cacheKeys3->templateValue();
while ( is_object( $cacheKeys3 ) and method_exists( $cacheKeys3, 'templateValue' ) )
    $cacheKeys3 = $cacheKeys3->templateValue();
unset( $cacheKeys4 );
unset( $cacheKeys4 );
$cacheKeys4 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'admin_theme', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['admin_theme'] : null;
if (! isset( $cacheKeys4 ) ) $cacheKeys4 = NULL;
while ( is_object( $cacheKeys4 ) and method_exists( $cacheKeys4, 'templateValue' ) )
    $cacheKeys4 = $cacheKeys4->templateValue();
while ( is_object( $cacheKeys4 ) and method_exists( $cacheKeys4, 'templateValue' ) )
    $cacheKeys4 = $cacheKeys4->templateValue();
unset( $cacheKeys5 );
unset( $cacheKeys5 );
$cacheKeys5 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'access_type', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['access_type'] : null;
if (! isset( $cacheKeys5 ) ) $cacheKeys5 = NULL;
while ( is_object( $cacheKeys5 ) and method_exists( $cacheKeys5, 'templateValue' ) )
    $cacheKeys5 = $cacheKeys5->templateValue();
while ( is_object( $cacheKeys5 ) and method_exists( $cacheKeys5, 'templateValue' ) )
    $cacheKeys5 = $cacheKeys5->templateValue();
$cacheKeys = array( $cacheKeys1, $cacheKeys2, $cacheKeys3, $cacheKeys4, $cacheKeys5 );unset( $cacheKeys1, $cacheKeys2, $cacheKeys3, $cacheKeys4, $cacheKeys5 );
if (! isset( $cacheKeys ) ) $cacheKeys = NULL;
while ( is_object( $cacheKeys ) and method_exists( $cacheKeys, 'templateValue' ) )
    $cacheKeys = $cacheKeys->templateValue();

$subtreeExpiry = NULL;
$cacheKeys = array( $cacheKeys, "6_0_6_109_design/admin/templates/loginpagelayout.tpl", "ezdemo_site_clean_admin" );

list($cacheHandler_49dc1f301537bb71f852e21b1300b509, $contentData) =
  eZTemplateCacheBlock::retrieve( $cacheKeys, $subtreeExpiry, 7200, true );
if ( !( $contentData instanceof eZClusterFileFailure ) )
{

$text .= $contentData;
    unset( $contentData );
}
else
{
    unset( $contentData );
if ( !isset( $textStack ) )
    $textStack = array();
$textStack[] = $text;
$text = '';
$text .= '
';
$oldRestoreIncludeArray_52f8604feaff0138caec648f05b6f944 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_head-401d1b911844788b1727b5a4453ff2ce.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/page_head.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_head-401d1b911844788b1727b5a4453ff2ce.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/page_head.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_52f8604feaff0138caec648f05b6f944;

$text .= '
';
$oldRestoreIncludeArray_76d9a3629f2191f56eeb251c56eecb21 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_head_style-8ae7e8c77c4b03f45cb75cb37a754fa3.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin/templates/page_head_style.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_head_style-8ae7e8c77c4b03f45cb75cb37a754fa3.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin/templates/page_head_style.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_76d9a3629f2191f56eeb251c56eecb21;

$oldRestoreIncludeArray_8b6c7a3b3af54bafa87294671bfa79e0 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_head_script-e053814abdb4e56db6815d0f1dfde240.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin/templates/page_head_script.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_head_script-e053814abdb4e56db6815d0f1dfde240.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin/templates/page_head_script.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_8b6c7a3b3af54bafa87294671bfa79e0;

$text .= '
</head>

<body class="loginpage">

<div id="page" class="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'navigation_part', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['navigation_part'] : null;
$var1 = compiledFetchAttribute( $var, 'identifier' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ' section_id_';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( "module_result", $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]["module_result"] : null;
$var2 = compiledFetchAttribute( $var1, "section_id" );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

if ( isset( $var1 ) )
{
    $var = $var1;
}
else
{
    $var = 0;
}
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '">
<div id="header">
<div id="header-design" class="float-break">
</div>
</div>
';
$cachedText = $text;
$cacheHandler_49dc1f301537bb71f852e21b1300b509->storeCache( array( 'scope' => 'template-block', 'binarydata' => $cachedText ) );

$text = array_pop( $textStack );
$text .= $cachedText;
    unset( $cachedText, $cacheHandler_49dc1f301537bb71f852e21b1300b509 );
}

$text .= '<hr class="hide" />

<div id="columns">
<div id="maincolumn">

<div id="maincontent">
<div id="maincontent-design" class="float-break"><div id="fix">


';
$oldRestoreIncludeArray_85406233d1d9ec9649a8f7d4a9063125 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_mainarea-f7e771b6bc8331ef9301d6f9139a5658.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/page_mainarea.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_mainarea-f7e771b6bc8331ef9301d6f9139a5658.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/page_mainarea.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_85406233d1d9ec9649a8f7d4a9063125;

$text .= '


</div>
<div class="break"></div>
</div></div>

<div class="break"></div>
</div>
</div>

<hr class="hide" />

<div id="footer">
<div id="footer-design">
';
$oldRestoreIncludeArray_bb64efb4365285e31909fbeb124a4813 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_login_copyright-a93dddec8b81af463649df96ff27a966.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin/templates/page_login_copyright.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_login_copyright-a93dddec8b81af463649df96ff27a966.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin/templates/page_login_copyright.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_bb64efb4365285e31909fbeb124a4813;

$text .= '
<div class="break"></div>
</div>
</div>


<!--DEBUG_REPORT-->
</div><!-- div id="page" -->

</body>
</html>
';

$setArray = $oldSetArray_e881c41c09513d04f09dc31661ac56cd;
$tpl->Level--;
?>
