{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
	
	{def $website_size_desktop = fetch('content', 'node', hash('node_id', $node.data_map.size_desktop.content.relation_list.0.node_id))}
	{def $website_size_tablet = fetch('content', 'node', hash('node_id', $node.data_map.size_tablet.content.relation_list.0.node_id))}
	{def $website_size_mobile = fetch('content', 'node', hash('node_id', $node.data_map.size_phone.content.relation_list.0.node_id))}	

	{* Check if we want to show the breadcrumb *}
	{if $node.data_map.show_breadcrumb.value}{include uri="design:newscenter/widget/widget_breadcrumb.tpl" desktop_size=$website_size_desktop.data_map.widget_size_class.data_text tablet_size=$website_size_tablet.data_map.widget_size_class.data_text phone_size=$website_size_mobile.data_map.widget_size_class.data_text }{/if}

	<div class="container-padding-left container-padding-bottom {$menusettings.0.data_map.link_hover_color.data_text} {$website_size_desktop.data_map.widget_size_class.data_text} {$website_size_tablet.data_map.widget_size_class.data_text|explode('lg')|implode('md')} {$website_size_mobile.data_map.widget_size_class.data_text|explode('lg')|implode('sm')}">
		<article>
			<h1>{$node.name|wash()}</h1>
			<div class="col-lg-12">{attribute_view_gui attribute=$node.data_map.body}</div>
			{def $user = fetch('user', 'current_user')}
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
					<div class="edit admin-panel container-padding-left container-padding-top-05 hide">
						<form action="/content/action" method="post">
							<input type="hidden" value="form_question" name="ClassIdentifier">
							<input type="hidden" value="{$node.node_id}" name="NodeID"> 
							<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
							<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Lägg till fråga</span></button>
						</form>
					</div>
				{/if}
			{undef $user}
			{def $questions = fetch('content', 'list', hash('parent_node_id', $node.node_id, 'class_filter_type', 'include', 'class_filter_array', array('form_question')))}
				{if $questions}
					{def $number = 1}
						<div class="col-lg-12 container-margin-top no-margin no-padding text-center">
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">&nbsp;</div>
							<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">&nbsp;</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center">Nästan aldrig</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center">&nbsp;</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center">&nbsp;</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center">Nästan alltid</div>
						</div>
						<div class="col-lg-12 container-padding-bottom no-margin no-padding text-center">
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">&nbsp;</div>
							<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">&nbsp;</div>
							{for 1 to $node.data_map.numbers.data_int as $value}
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center"><strong>{$value}</strong></div>
							{/for}
						</div>
						{foreach $questions as $question}
							<div class="col-lg-12 no-margin no-padding container-padding-left">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 no-margin no-padding"><strong>{$number}.</strong></div>
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7 no-margin no-padding">{$question.name|wash()}</div>
								{for 1 to $node.data_map.numbers.data_int as $value}
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 no-margin no-padding text-center"><input type="radio" name="question_{$question.contentobject_id}" value="{$value}"></div>
								{/for}
							</div>
							{delimiter}<hr class="clear no-margin no-padding" />{/delimiter}
							{set $number = $number|inc(1)}
						{/foreach}
						<div class="col-lg-12 container-margin-top container-padding-top container-padding-bottom no-margin no-padding clear">
							<div class="text-right"><button class="btn btn-primary">Svara</button></div>
						</div>
					{undef $number}
				{/if}
			{undef $questions}
		</article>
	</div>

	{undef $menusettings}
{undef $company}
