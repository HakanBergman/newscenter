
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding">
  <div class="row thumbnail widget-margin-top widget-padding-4 widget-list-slider">
    <ul class="pgwSlider">
      {if $block.data_map.image_one.has_content}       
        <li>            
            {if $block.data_map.link_one.has_content}<a href="{$block.data_map.link_one.value}" class="font-size-14-px" title="{$block.data_map.link_one.data_text}"{if $block.data_map.new_window_one.value} target="_blank"{/if}>{/if}
              <img class="height-100-percent img-responsive" src="/{$block.data_map.image_one.content.widget_image_list_slider.full_path}" alt="{$block.data_map.image_caption_one.data_text|wash()}" data-description="{$block.data_map.image_one.content.alternative_text}"></img>
            {if $block.data_map.link_one.has_content}</a>{/if}
        </li>
      {/if}
      {if $block.data_map.image_two.has_content}
        <li>
          <img class="height-100-percent img-responsive" src="/{$block.data_map.image_two.content.widget_image_list_slider.full_path}" alt="{$block.data_map.image_two.content.alternative_text}" data-description="{$block.data_map.image_two.content.alternative_text}"></img>
        </li>
      {/if}
      {if $block.data_map.image_three.has_content}
        <li>
          <img class="height-100-percent img-responsive" src="/{$block.data_map.image_three.content.widget_image_list_slider.full_path}" alt="{$block.data_map.image_three.content.alternative_text}" data-description="{$block.data_map.image_three.content.alternative_text}"></img>
        </li>
      {/if}
      {if $block.data_map.image_four.has_content}
        <li>
          <img class="height-100-percent img-responsive" src="/{$block.data_map.image_four.content.widget_image_list_slider.full_path}" alt="{$block.data_map.image_four.content.alternative_text}" data-description="{$block.data_map.image_four.content.alternative_text}"></img>
        </li>
      {/if}
    </ul>
  </div>
</div>
{literal}
	<script type="text/javascript">
    $(document).ready(function() {
      $('.pgwSlider').pgwSlider({
        listPosition: 'right',
        selectionMode: 'click',
        autoSlide: false,
        displayList: true,    
      });
    });
  </script>
{/literal}