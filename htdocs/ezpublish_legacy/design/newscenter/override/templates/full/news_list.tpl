<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2 class="container-padding-left">{$node.name|wash()}</h2>
	<div class="col-lg-12 clear">
    {def $newsposts = $node.data_map.number_of_posts.data_int}   
    {def $number_of_posts = 1}
		  {foreach $node.children as $newslist}      
			  <div class="{$newslist.data_map.column_size.data_text}"> 
				  <h4 class="{$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">{$newslist.name|wash()}</h4>
          {if $newslist.data_map.allow_news_posts.value}
            {def $user = fetch('user', 'current_user')}
              {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
                <div class="edit admin-panel container-padding-left-2 container-padding-top-05">
                    <form action="/content/action" method="post">
                      <input type="hidden" value="news" name="ClassIdentifier" />
                      <input type="hidden" class="input-zone-id" value="{$newslist.node_id}" name="NodeID" />
                      <input type="hidden" value="swe-SE" name="ContentLanguageCode" />
                      <button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding" >
                        <span class="glyphicon glyphicon-file text-primary"></span>
                        <span class="container-padding-left">Lägg till Nyhet</span>
                      </button>
                    </form>
                </div>
             {/if}
            {undef $user}
          {/if}
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