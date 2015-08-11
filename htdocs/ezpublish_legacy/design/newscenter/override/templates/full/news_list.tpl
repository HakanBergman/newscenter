<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2>{$node.name|wash()}</h2>
	<div class="col-lg-12 clear">
		{switch match=$node.children|count()}
			{case match=1}
				{def $column_size = "col-lg-12 col-md-12 col-sm-12 col-xs-12"}
			{/case}
			{case match=2}
				{def $column_size = "col-lg-6 col-md-6 col-sm-6 col-xs-6"}
			{/case}
			{case match=3}
				{def $column_size = "col-lg-4 col-md-4 col-sm-4 col-xs-4"}
			{/case}
			{case}
				{def $column_size = "col-lg-12 col-md-12 col-sm-12 col-xs-12"}
			{/case}
		{/switch}	

		{foreach $node.children as $newslist}      
			<div class="{$column_size} container-padding-top"> 
				<h2 class="{$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">{$newslist.name|wash()}</h2>			
        {if $newslist.children}
				  {foreach $newslist.children as $news}            
            {if $newslist.class_identifier|eq('news_category')}
					    <div class="container-padding-left-2">        
						    <span class="glyphicon glyphicon-file"></span>
						    <a href="{$news.url|ezurl('no', 'full')}" class="font-weight-normal container-padding-left" title="{$news.name|wash()}">
							    {$news.name|wash()} {$news.class_identifier}
						    </a>
					    </div>
            {/if}
				  {/foreach}
        {/if}   
      </div>
		{/foreach}
	</div>
</div>