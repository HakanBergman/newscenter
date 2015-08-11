<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2 class="container-padding-left">{$node.name|wash()}</h2>
	<div class="col-lg-12 clear">
    {def $newsposts = $node.data_map.number_of_posts.data_int}   
    {def $number_of_posts = 1}
		  {foreach $node.children as $newslist}      
			  <div class="{$newslist.data_map.column_size.data_text}"> 
				  <h4 class="{$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">{$newslist.name|wash()}</h4>			        
          {if $newslist.children}
				    {foreach $newslist.children as $news}     
              {switch match=$news.class_identifier}
                {case match='news_post'}
                  {if $newsposts|le($number_of_posts)}
					          <div class="container-padding-left container-margin-top">        
						          <h4><span class="glyphicon glyphicon-file"></span> {$news.name|wash()}</h4>
                      <div class="clear container-padding-top">
                        {attribute_view_gui attribute=$news.data_map.body}
                      </div>
                      {def $user = fetch('user', 'current_user')}
                        {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
                          <div class="clear">
                            <a href="/content/edit/{$news.contentobject_id}" title="Redigera {$news.name|wash()}">Redigera {$news.name|wash()}</a>
                          </div>
                        {/if}
                      {undef $user}
                      <hr class="clear border-solid-black" />
					          </div>   
                  {/if}
                {/case}
                {case}
                  {include uri="design:newscenter/widget/widget_facebook.tpl" block=$news}
                {/case}
              {/switch}
				    {/foreach}
          {/if}   
        </div>
		  {/foreach}
    {undef $newsposts $number_of_posts}
	</div>
</div>