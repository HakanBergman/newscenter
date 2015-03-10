<header class="{$#company.data_map.background_color_menu.data_text}">
  <div class="container-fluid">
    {* Top Navigation *}
    {include uri='design:newscenter/navigation/top-navigation.tpl'}

    {* Mobile Navigation *}
    {* require_once("widgets/navigation/mobile.tpl") *}

    {def $user = fetch('user', 'current_user')}
      {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
        {include uri="design:page_admin_sidebar.tpl" user=$user}
      {/if}
    {undef $user}

  </div>
</header>
