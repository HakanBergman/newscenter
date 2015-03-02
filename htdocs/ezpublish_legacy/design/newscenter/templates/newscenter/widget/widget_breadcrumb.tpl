  {def $breadcrumb = fetch('content', 'node', hash('node_id', $node.node_id))}
    <ol class="breadcrumb">
      {foreach $breadcrumb.path_array|extract(3) as $path}
        {def $path_node = fetch('content', 'node', hash('node_id', $path))}
          {if $path_node.url}
            <li><a href="{$path_node.url|ezurl('no', 'full')}" title="{$path.name|wash()}">{$path_node.name|wash()}</a></li>
          {else}
            <li class="active">{$path_node.name|wash()}</li>
          {/if}
         {undef $path_node}
       {/foreach}
      </ol>
  {undef $breadcrumb}