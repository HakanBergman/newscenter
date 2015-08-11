<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2 class="container-padding-left">{$node.name|wash()}</h2>
	<div class="col-lg-12 clear">
		{foreach $node.children as $newslist}      
			<div class="{$newslist.data_map.column_size.data_text} container-padding-top"> 
				<h3 class="{$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">{$newslist.name|wash()}</h3>			
        {if $newslist.children}
				  {foreach $newslist.children as $news}     
            {switch match=$news.class_identifier}
              {case match='news_post'}
					      <div class="container-padding-left-2">        
						      <span class="glyphicon glyphicon-file"></span>
						      <a href="{$news.url|ezurl('no', 'full')}" class="font-weight-normal container-padding-left" title="{$news.name|wash()}">
							      {$news.name|wash()}
						      </a>
					      </div>                
              {/case}
              {case}
                {include uri="design:newscenter/widget/widget_facebook.tpl" block=$news}
              {/case}
            {/switch}
				  {/foreach}
        {/if}   
      </div>
		{/foreach}
	</div>
</div>