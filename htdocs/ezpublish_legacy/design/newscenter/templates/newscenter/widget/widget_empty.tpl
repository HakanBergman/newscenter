{def $breadcrumb = fetch('content', 'node', hash('node_id', $node.node_id))}
	<div class="{$desktop_size} {$tablet_size|explode('lg')|implode('md')} {$phone_size|explode('lg')|implode('sm')} container-padding-top container-padding-right container-padding-left no-margin no-padding">
		&nbsp;		
	</div>  
{undef $breadcrumb}