<?php
// URI:       extension/ezdemo/design/ezdemo/templates/footer/links.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/footer/links.tpl
// Timestamp: 1422360663 (Tue Jan 27 13:11:03 CET 2015)
$oldSetArray_2f7880fd7ab9410bcf6a85e4094cc39e = isset( $setArray ) ? $setArray : array();
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

$text .= '<h3>eZ Links</h3>';
$textElements = array();
$tpl->processFunction( 'attribute_view_gui', $textElements,
                       false,
                       array (
  'attribute' => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'node',
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
          1 => 'data_map',
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
          1 => 'body',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
),
                       array (
  0 => 
  array (
    0 => 2,
    1 => 0,
    2 => 58,
  ),
  1 => 
  array (
    0 => 2,
    1 => 48,
    2 => 106,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/footer/links.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );


$setArray = $oldSetArray_2f7880fd7ab9410bcf6a85e4094cc39e;
$tpl->Level--;
?>
