<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_footer_script.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_footer_script.tpl
// Timestamp: 1422360663 (Tue Jan 27 13:11:03 CET 2015)
$oldSetArray_be1d763781627239a2a39349bea971ce = isset( $setArray ) ? $setArray : array();
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

$text .= '
';

$setArray = $oldSetArray_be1d763781627239a2a39349bea971ce;
$tpl->Level--;
?>
