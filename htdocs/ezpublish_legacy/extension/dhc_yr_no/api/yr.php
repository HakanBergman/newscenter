<?php

	/* Fetch Data from */
	$yr_url='http://www.yr.no/stad/Sverige/Västmanland/Västerås';

	/* Don't header or footer */
	$yr_use_header = false;
	$yr_use_footer = false;

	/* YR Settings */
	$yr_use_banner = false;
	$yr_use_text = true;
	$yr_use_links = false;
	$yr_use_table = true;

	/* When to fetch new forecast */
	$yr_maxage=1200;

	/* Timeout before connection to YR fails */
	$yr_timeout = 10;

	/* Create YR Cache directory */
	$yr_datadir='yr_cache';

	/* Check if we want debugging */
	$yr_vis_php_feilmeldinger = false;

	/* Create a connection to YR */
	$yr_xmlparse = &new YRComms();

	/* Fetch presentation */
	$yr_xmldisplay = &new YRDisplay();

	/* Try the CURL */
	$yr_try_curl = true;

	/* Do the fetch */
	$yr_xmldisplay->generateHTMLCached($yr_url, $yr_name, $yr_xmlparse, $yr_url, $yr_try_curl, $yr_use_header, $yr_use_footer, $yr_use_banner, $yr_use_text, $yr_use_links, $yr_use_table, $yr_maxage, $yr_timeout, $yr_link_target);

?>