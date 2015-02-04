<nav id="topNav-one" class="grey">
	<div class="row">
		<div class="col-xs-3 col-md-3">
      <h1 class="no-margin no-padding"><img class="img-responsive" src="http://maltimportoren.datadelenhc.com/var/ezdemo_site_clean/storage/images/maltimportoeren/947-18-swe-SE/Maltimportoeren.png"></img></h1>
    </div>
		<div class="col-xs-8 col-md-9">
      {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
      {if $menu_items}
         <ul>
              {foreach $menu_items as $item}
                {switch match=$item.class_identifier}
                  {case match='link'}
                    <li><a href="{$item.data_map.location.value|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                  {/case}
                  {case}
                    <li><a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                  {/case}
               {/switch}             
              {/foreach}

			    </ul>
      {/if}
     {undef $menu_items}
		</div>
	</div>
</nav>