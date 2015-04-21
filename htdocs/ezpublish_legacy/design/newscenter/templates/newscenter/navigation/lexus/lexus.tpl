<div class="{$menusettings.0.data_map.background_color_logotype.data_text}">
    <div class="container">
        {include uri="design:page_header_logo.tpl" menusettings=$menusettings}
        {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
          {if $menu_items}
            <nav role="navigation">
              <div class="container-fluid {$menusettings.0.data_map.background_color.data_text} navigation-box">
                <div class="container">
                  <div class="navbar no-margin no-padding">
                    <ul class="nav navbar-nav no-padding"> 
                        {foreach $menu_items as $item}
                            <li>
                                <a href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a>
                            </li>                
                        {/foreach}
                    </ul>
                  </div>
                </div>
              </div>
            </nav>
          {/if}
        {undef $menu_items}
    </div>
</div>

<div class="ch-header">
    <div class="c-l-container-12 header-inner clearfix">
        <div class="flushgrid-12">
            <a href="/"><img src="http://www.lexus.se/img/logo_tcm911-1123464.gif" class="logo" alt="Lexus"></a>
            <div class="tools">
                <nav class="cta-list">
                    <ul>
                        <li>
                            <noscript>&lt;a href="/forms/request-a-testdrive-form.aspx?houseCampaign=1" class="iframe form-slide-down no-js-links" data-id="TestDrive"&gt;Boka provkörning&lt;/a&gt;</noscript>
                            <a data-href="/forms/request-a-testdrive-form.aspx?houseCampaign=1" class="iframe form-slide-down js-links" data-id="TestDrive" href="/forms/request-a-testdrive-form.aspx?houseCampaign=1">Boka provkörning</a>
                        </li>
                        <li>
                            <noscript>&lt;a href="http://www.anpdm.com/form/41405F457849425B4271/4146504471424A5A4B71?TB_iframe=true&amp;amp;width=430&amp;amp;height=430&amp;amp;modal=true&amp;amp;houseCampaign=1" class="colorbox iframe cboxElement no-js-links" data-id="Brochure"&gt;Lexus nyhetsbrev&lt;/a&gt;</noscript>
                            <a data-href="http://www.anpdm.com/form/41405F457849425B4271/4146504471424A5A4B71?TB_iframe=true&amp;width=430&amp;height=430&amp;modal=true&amp;houseCampaign=1" class="colorbox iframe cboxElement js-links" data-id="Brochure" href="http://www.anpdm.com/form/41405F457849425B4271/4146504471424A5A4B71?TB_iframe=true&amp;width=430&amp;height=430&amp;modal=true&amp;houseCampaign=1">Lexus nyhetsbrev</a>
                        </li>
                        <li><noscript>&lt;a href="/forms/find-a-retailer-form.tmex?houseCampaign=1" class="iframe form-slide-down no-js-links" data-id="Dealer"&gt;Återförsäljare/Service&lt;/a&gt;</noscript><a data-href="/forms/find-a-retailer-form.tmex?houseCampaign=1" class="iframe form-slide-down js-links" data-id="Dealer" href="/forms/find-a-retailer-form.tmex?houseCampaign=1">Återförsäljare/Service</a></li><li><noscript>&lt;a href="/forms/contact-us-form.aspx?houseCampaign=1" class="iframe form-slide-down no-js-links" data-id="ContactUs"&gt;Kontakta oss&lt;/a&gt;</noscript><a data-href="/forms/contact-us-form.aspx?houseCampaign=1" class="iframe form-slide-down js-links" data-id="ContactUs" href="/forms/contact-us-form.aspx?houseCampaign=1">Kontakta oss</a></li><li><noscript>&lt;a href="/search-results.tmex" class="search-link ajax no-js-links"&gt;Sök&lt;/a&gt;</noscript><a data-href="/search-results.tmex" class="search-link ajax js-links loaded" href="/search-results.tmex">Sök</a></li></ul></nav>
            </div>
        </div>
    </div>
</div>
