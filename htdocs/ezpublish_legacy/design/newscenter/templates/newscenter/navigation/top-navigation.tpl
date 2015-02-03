<nav id="topNav-one" class="grey">
	<div class="row">
		<div class="col-xs-3 col-md-3">{currentdate()|datetime('custom', '%l %j %F %Y')|upword()}</div>
		<div class="col-xs-8 col-md-9">
      {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
      {if $menu_items}
      <ul>
              {foreach $menu_items as $item}
                {switch match=$item.class_identifier}
                  {case match='link'}
                    <li><a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                  {/case}
                  {case}
                    <li><a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                  {/case}
              {/switch}
              
              {/foreach}
				      <li><a href="#">Om oss</a></li>
				      <li><a href="#">Cookies</a></li>
				      <li><a href="#">Annonsera</a></li>
				      <li><a href="#">Tipsa oss</a></li>
				      <li class="log-in"><a href="#">Logga in</a></li>
			    </ul>
      {/if}
     {undef $menu_items}
		</div>
	</div>
</nav>