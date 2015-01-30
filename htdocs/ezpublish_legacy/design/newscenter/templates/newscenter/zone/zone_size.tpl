{* Zone Sizes *}
{def $zone_width}

{switch match=$zone.data_map.zone_size.content.0}

	{case match=0}
		{* 100% *}
		{set scope='global' $zone_width = "col-lg-12"}
	{/case}

	{case match=1}
		{* 91% *}
		{set scope='global' $zone_width = "col-lg-11"}
	{/case}

	{case match=2}
		{* 83% *}
		{set scope='global' $zone_width = "col-lg-10"}
	{/case}

	{case match=3}
		{* 75% *}
		{set scope='global' $zone_width = "col-lg-9"}
	{/case}

	{case match=4}
		{* 66% *}
		{set scope='global' $zone_width = "col-lg-8"}
	{/case}

	{case match=5}
		{* 58% *}
		{set scope='global' $zone_width = "col-lg-7"}
	{/case}

	{case match=6}
		{* 50% *}
		{set scope='global' $zone_width = "col-lg-6"}
	{/case}

	{case match=7}
		{* 41% *}
		{set scope='global' $zone_width = "col-lg-5"}
	{/case}

	{case match=8}
		{* 33% *}
		{set scope='global' $zone_width = "col-lg-4"}
	{/case}

	{case match=9}
		{* 25% *}
		{set scope='global' $zone_width = "col-lg-3"}
	{/case}

	{case match=10}
		{* 16% *}
		{set scope='global' $zone_width = "col-lg-2"}
	{/case}

	{case match=11}
		{* 8% *}
		{set scope='global' $zone_width = "col-lg-1"}
	{/case}

{/switch}

{$zone_width} zone bredd2