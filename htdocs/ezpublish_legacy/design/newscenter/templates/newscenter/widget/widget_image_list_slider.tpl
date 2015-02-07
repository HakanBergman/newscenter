<div class="row thumbnail widget-margin-top widget-list-slider">
  {$block.data_map.image_one.content|attribute(show, 1)}
  <ul class="pgwSlider">
    {if $block.data_map.image_one.has_content}
      <li>
        <img class="max-height-30 img-responsive" src="/{$block.data_map.image_one.content.original.full_path}" alt="{$block.data_map.image_one.content.alternative_text}" data-description="{$block.data_map.image_one.content.alternative_text}">
      </li>
    {/if}
    <li>
      <img src="http://static.pgwjs.com/img/pg/slider/montreal_mini.jpg" alt="Montréal, QC, Canada" data-large-src="http://static.pgwjs.com/img/pg/slider/montreal.jpg">
    </li>
    <li>
      <img src="http://static.pgwjs.com/img/pg/slider/shanghai.jpg">
        <span>Shanghai, China</span>
      </li>
    <li>
      <a href="http://www.nyc.gov" target="_blank">
        <img src="http://static.pgwjs.com/img/pg/slider/new-york.jpg">
          <span>New York, NY, USA</span>
        </a>
    </li>
  </ul>
</div>
{literal}
	<script type="text/javascript">
    $(document).ready(function() {
      $('.pgwSlider').pgwSlider({
        adaptiveHeight : true,
        maxHeight : 300,
        listPosition: 'right',
        selectionMode: 'click',
        autoSlide: false,
        displayList: true,    
      });
    });
  </script>
{/literal}