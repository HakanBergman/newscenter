  {def $breadcrumb = fetch('content', 'node', hash('node_id', $node.node_id))}
    <ol class="breadcrumb">
      {foreach $breadcrumb.path_array|extract(2) as $path}
        {def $path_node = fetch('content', 'node', hash('node_id', $path))}
          {if and($path_node.url, $path_node.node_id|ne($node.node_id))}
            <li><a href="{$path_node.url|ezurl('no', 'full')}" title="{$path.name|wash()}">{$path_node.name|wash()}</a></li>
          {else}
            <li class="active">{$path_node.name|wash()}</li>
          {/if}
         {undef $path_node}
       {/foreach}
      </ol>
  {undef $breadcrumb}