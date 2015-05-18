<div class="row widget-links">
  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
      <h5 class="text-center {$block.data_map.background_color.data_text} {$block.data_map.text_color.data_text} container-padding-top-05 container-padding-bottom-05">{$block.name|wash()}</h5>
      {if and(is_set($object)|not, is_set($edit_version)|not)}
        {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
        <div class="container-margin-left admin-panel container-padding-right container-padding-left float-right hide">
          <form action="/content/action" method="post">
            <input type="hidden" value="widget_link" name="ClassIdentifier" />
            <input type="hidden" class="input-zone-id" value="{$block.node_id}" name="NodeID" />
            <input type="hidden" value="swe-SE" name="ContentLanguageCode" />
            <button type="submit" name="NewButton" class="btn btn-link">
              <span class="glyphicon glyphicon-plus"></span>
            </button>
          </form>
        </div>
        {/if}
      {/if}
        
      {if $block.data_map.show_children.value}
        {def $child_nodes = fetch('content', 'list', hash('parent_node_id', $current_node.node_id, 'class_filter_type', 'include', 'class_filter_array', array('website')))}
          {if $child_nodes}
            <ul>
              {foreach $child_nodes as $child}
                <li>
                  <a href="{$child.url|ezurl('no', 'full')}" alt="{$child.name}">{$child.name|wash()}</a>
                </li>
              {/foreach}
            </ul>
          {/if}
        {undef $child_nodes}
      {else}
        {switch match=$block.data_map.information.content.0}
          {case match=0}
          {/case}
          {case match=1}
          {/case}
          {case match=2}
            {* Fetch information from parent node *}
            {def $child_nodes = fetch('content', 'list', hash('parent_node_id', $current_node.parent.node_id, 'class_filter_type', 'include', 'class_filter_array', array('website')))}
              {if $child_nodes}
                <ul class="navbar">
                  {foreach $child_nodes as $child}
                    <li>
                      <a href="{$child.url|ezurl('no', 'full')}" alt="{$child.name}">{$child.name|wash()}</a>
                      {def $grandchilds = fetch('content', 'list', hash('parent_node_id', $child.node_id, 'class_filter_type', 'include', 'class_filter_array', array('form')))}
                        {if $grandchilds}
                          <ul class="navbar no-padding">
                            {foreach $grandchilds as $grandchild}
                              <li class="container-padding-left"><a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}">{$grandchild.name|wash()}</a></li>
                            {/foreach}
                          </ul>  
                        {/if}
                     {undef $grandchilds}
                    </li>
                  {/foreach}
                </ul>
              {/if}
            {undef $child_nodes}
          {/case}
        {/switch}
      {/if}
  </div>
</div>
