  {def $breadcrumb = fetch('content', 'node', hash('node_id', $node.node_id))}
  <div class="{$desktop_size} {$tablet_size|explode('lg')|implode('md')} {$phone_size|explode('lg')|implode('sm')} container-padding-top container-padding-right container-padding-left no-margin no-padding">
    <ol class="breadcrumb">
      {foreach $breadcrumb.path_array|extract(3) as $path}
        {def $path_node = fetch('content', 'node', hash('node_id', $path))}
          {if and($path_node.url, $path_node.node_id|ne($node.node_id))}
            <li><a href="{$path_node.url|ezurl('no', 'full')}" title="{$path.name|wash()}">{$path_node.name|wash()}</a></li>
          {else}
            <li class="active">{$path_node.name|wash()}</li>
          {/if}
         {undef $path_node}
       {/foreach}
      </ol>
	</div>  
  {undef $breadcrumb}