{* Def Zone Width *}
{def $zone_width = ""}

{* Fetch the correct Zone Size *}
{include uri="design:newscenter/zone/zone_size.tpl" zone_width=$zone_width}
{$#zone_width} zone bredd

	{* Print the Zone *}
	<div class="">
	</div>

{undef $zone_width}