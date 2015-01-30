{switch match=$zone.data_map.zone_size.content}
	{case}
		{$zone.data_map.zone_size.content|attribute(show, 1)}
	{/case}
{/switch}