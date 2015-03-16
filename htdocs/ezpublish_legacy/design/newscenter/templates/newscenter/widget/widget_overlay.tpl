<nav class="overlay navbar-fixed-top height-100-percent {$block.data_map.overlay_background_color.data_text} {$block.data_map.opacity.data_text} hide" id="overlay-{$block.contentobject_id}"></nav>
<nav class="overlay-content navbar-fixed-top height-100-percent no-background hide" id="overlay-content-{$block.contentobject_id}">
	<div class="container">
		<div class="row no-margin no-padding container-padding-left-4 container-padding-right-4">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding container-margin-top-20-percent {$block.data_map.background_color.data_text}">
				<div class="container-padding-left-4 container-padding-right-4 container-padding-top-2 container-padding-bottom-2">
					<div class="text-center">
						<h1><img src="/{$block.data_map.image.content.original.full_path}" alt="{$block.data_map.image.content.alternative_text}" class="img-responsive center-item"></img></h1>
					</div>
					<div class="container-padding-left-2 container-padding-right-2 font-size-105-em">
						{$block.data_map.body.data_text}
					</div>
					<div class="container-padding-left-2 container-padding-right-2 container-padding-top-2">
						<button type="button" class="btn {$block.data_map.btn_class.data_text} font-size-105-em display-block center-item width-100-percent hide-navbar" data-src="{$block.contentobject_id}">
							{$block.data_map.button_text.data_text}
						</button>
					</div>
				</div>
			</div>
		</div>				
	</div>
</nav>