<div class="row thumbnail widget-margin-top widget-list-slider">
  <ul class="pgwSlider">
    {if $block.data_map.image_one.has_content}
      <li>
        <img class="height-100-percent img-responsive" src="/{$block.data_map.image_one.content.original.full_path}" alt="{$block.data_map.image_one.content.alternative_text}" data-description="{$block.data_map.image_one.content.alternative_text}"></img> 
      </li>
    {/if}
    {if $block.data_map.image_two.has_content}
    <li>
      <img class="height-100-percent img-responsive" src="/{$block.data_map.image_two.content.original.full_path}" alt="{$block.data_map.image_two.content.alternative_text}" data-description="{$block.data_map.image_two.content.alternative_text}"></img>
    </li>
    {/if}
    {if $block.data_map.image_three.has_content}
    <li>
      <img class="height-100-percent img-responsive" src="/{$block.data_map.image_three.content.original.full_path}" alt="{$block.data_map.image_three.content.alternative_text}" data-description="{$block.data_map.image_three.content.alternative_text}"></img>
    </li>
    {/if}
    {if $block.data_map.image_four.has_content}
    <li>
      <img class="height-100-percent img-responsive" src="/{$block.data_map.image_four.content.original.full_path}" alt="{$block.data_map.image_four.content.alternative_text}" data-description="{$block.data_map.image_four.content.alternative_text}"></img>
    </li>
    {/if}
  </ul>
</div>
{literal}
	<script type="text/javascript">
    $(document).ready(function() {
      $('.pgwSlider').pgwSlider({
        maxHeight : 300,
        listPosition: 'right',
        selectionMode: 'click',
        autoSlide: false,
        displayList: true,    
      });
    });
  </script>
{/literal}