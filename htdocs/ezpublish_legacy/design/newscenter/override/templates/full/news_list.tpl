﻿<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
    <div class="pull-left">
      <h2>{$node.name|wash()}</h2>
    </div>
    <div class="pull-right">
      <a href="/content/edit/{$node.contentobject_id}" title="Redigera {$node.name|wash()}" class="btn btn-info glyphicon glyphicon-edit"></a>
      <form method="post" action="/content/action" class="float-right container-padding-left">
        <input type="hidden" name="TopLevelNode" value="{$node.node_id}" />
        <input type="hidden" name="ContentNodeID" value="{$node.node_id}" />
        <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}" />
        <button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
      </form>      
    </div>
  {else}
    <h2>{$node.name|wash()}</h2>
  {/if}
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
      {if $newslist.class_identifier|eq('news_category')}
			  <div class="{$column_size} container-padding-top"> 
				  <h2 class="{$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}"><a href="{$newslist.url|ezurl('no', 'full')}" title="{$newslist.name|wash()}">{$newslist.name|wash()}</a></h2>
			  </div>
          {if $newslist.children}
				    {foreach $newslist.children as $news}
					    <div class="container-padding-left-2">        
						    <span class="glyphicon glyphicon-file"></span>
						    <a href="{$news.url|ezurl('no', 'full')}" class="font-weight-normal container-padding-left" title="{$news.name|wash()}">
							    {$news.name|wash()}
						    </a>
					    </div>
				    {/foreach}
          {/if}
      {/if}       
		{/foreach}
	</div>
</div>