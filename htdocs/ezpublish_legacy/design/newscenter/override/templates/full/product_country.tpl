{literal}
<style>
  .shop-category {
  margin-right: 13.625%;
  color: #000;
  font: normal 11px/15px sans-serif;
  margin-bottom: 5px;
  }
  .shop-category:last-child {
  margin-bottom: 20px;
  }
  .sort-options {
  line-height: 31px;
  }
  .sort-options:before, .sort-options:after {
  content: "";
  display: table;
  }
  .sort-options:after {
  clear: both;
  }
  .sort-options-label {
  float: left;
  padding: 0 9px 0 0;
  }
  .sortbutton.active {
  color: #d1d1d1;
  border-right: #d1d1d1;
  background: #666;
  }
  .sortbutton {
  float: left;
  background: #232323 url(../img/search-bg.png) repeat-x;
  padding: 0 15px;
  border-right: 1px solid #686868;
  font-size: 14px;
  color: #b6b6b6;
  }
  .filter {
  float: left;
  height: 31px;
  position: relative;
  }
  .filter .sortbutton {
  width: 178px;
  padding: 0;
  }
  .sortbutton {
  float: left;
  background: #232323 url(../img/search-bg.png) repeat-x;
  padding: 0 15px;
  border-right: 1px solid #686868;
  font-size: 14px;
  color: #b6b6b6;
  }
  .filter .sortbutton span {
  display: block;
  padding: 0 31px 0 15px;
  background: url(../img/select-arrow.png) no-repeat 100% 50%;
  }
  .filter .category-list {
  position: absolute;
  width: 100%;
  top: 31px;
  left: 0;
  z-index: 100;
  display: none;
  }
  .filter .category-list ul {
  padding: 0;
  margin: 0;
  list-style: none;
  background: #000;
  }
  .filter .category-list ul li {
  font: normal 14px/16px sans-serif;
  padding: 7px 15px;
  }
  .filter .category-list ul li a {
  color: #B6B6B6;
  }
  .sort-options .limit {
  clear: both;
  padding: 6px 0 0;
  }
  .shop-category .flexslider {
  padding-top: 20px;
  }
  .flexslider {
  position: relative;
  zoom: 1;
  padding: 0 0 19px;
  margin: 0;
  }
  .shop-category .carousel .slides {
  border-bottom: 1px solid #c3c3c3;
  padding: 0 0 17px;
  }
  .flexslider .slides {
  zoom: 1;
  }
  .flexslider .slides > li {
  position: relative;
  zoom: 1;
  }
  .shop-category .carousel li .item {
  margin: 0 20px 20px 0;
  float: left;
  width: 105px;
  }
  .shop-category .img-link {
  height: 141px;
  display: block;
  vertical-align: bottom;
  position: relative;
  margin: 0 0 6px;
  }
  .shop-category .img-link img {
  display: block;
  vertical-align: bottom;
  position: absolute;
  bottom: 0;
  max-height: 100%;
  }
  .flexslider .slides img {
  max-width: 100%;
  display: block;
  }
  .flexslider img {
  display: block;
  margin: 0 auto;
  }
  .shop-category .title {
  font-weight: normal;
  display: block;
  margin: 0 0 2px;
  height: 30px;
  min-height: 30px;
  }
  .shop-category .price {
  display: block;
  font: bold 20px/24px sans-serif;
  margin: 0 0 5px;
  }
  .shop-category li form {
  margin: 0 0 5px;
  }
  .shop-category li .add-to-basket {
  border: none;
  background: url(../img/colored-arrows.png) no-repeat 0 -80px;
  color: #454545;
  display: block;
  font: 12px/19px sans-serif;
  padding: 0 0 0 24px;
  }
  button, input[type="button"], input[type="reset"], input[type="submit"] {
  cursor: pointer;
  -webkit-appearance: button;
  }
  button, input, select, textarea {
  font-size: 100%;
  margin: 0;
  vertical-align: baseline;
  border-radius: 0;
  }
  .shop-category .std-btn {
  background-position: 0 0;
  position: relative;
  }
  .std-btn {
  height: 19px;
  border: none;
  }
  .flex-container a, .flexslider a, .flex-container a:active, .flexslider a:active, .flex-container a:focus, .flexslider a:focus {
  outline: none;
  }
  .book, .std-btn {
  display: block;
  font: normal 12px/19px sans-serif;
  color: #333;
  padding: 0 0 0 24px;
  background: url(../img/colored-arrows.png) no-repeat;
  }
  .flexslider .slides > li {
  position: relative;
  zoom: 1;
  }
  .shop-category .flex-control-nav {
  width: auto;
  right: 0;
  line-height: 1em;
  margin-right: -8px;
  }
  .flex-control-nav {
  width: 36px;
  position: absolute;
  bottom: 0;
  right: 40px;
  text-align: center;
  font: normal 11px/19px sans-serif;
  color: #666;
  }
  .slides, .flex-control-nav, .flex-direction-nav {
  margin: 0;
  padding: 0;
  list-style: none;
  }
  .shop-category .flex-control-nav li:first-child {
  border-left: none;
  }
  .shop-category .flex-control-nav li {
  display: block;
  float: left;
  margin: 0;
  border-left: 1px solid #666;
  }
  .shop-category .flex-control-nav li a.flex-active {
  color: #000;
  text-decoration: underline;
  }
  .shop-category .flex-control-nav li a {
  display: block;
  float: left;
  padding: 0 8px;
  }
  .flex-control-nav a.flex-active {
  display: block;
  cursor: default;
  }


</style>
{/literal}

<div class="container">
  <h2>
    <div class="flag flag-icon-background {$node.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
    {$node.name|wash()}    
  </h2>
  {if $node.children}
  {foreach $node.children as $child}
  {switch match=$child.class_identifier}
    {case match='product_country'}
      {switch match=$node.children|count()}
        {case match=2}
          {def $column_size = "col-lg-6 col-md-6 col-sm-6 col-xs-12"}
        {/case}
        {case match=3}
          {def $column_size = "col-lg-4 col-md-4 col-sm-4 col-xs-12"}
        {/case}
        {case match=4}
          {def $column_size = "col-lg-3 col-md-4 col-sm-3 col-xs-12"}
        {/case}
        {case}
         {def $column_size = "col-lg-12"}
        {/case}
      {/switch}
  <div class="{$column_size} container-padding-top">
    <div class="flag flag-icon-background {$child.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
    <h3 class="container-padding-left float-left no-margin {$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">
      <a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a>
    </h3>
    {foreach $child.children as $grandchild}
    {switch match=$grandchild.class_identifier}
    {case match='product_list'}
    {switch match=$grandchild.class_identifier}
    {case match='product_list'}
    <div class="row clear">
      <div class="col-lg-12 container-padding-top-05">
        <h4 class="container-padding-left-3 container-padding-bottom font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}">
          <a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}">{$grandchild.name}</a>
        </h4>
        {if $grandchild.children}
        {foreach $grandchild.children as $grandgrandchild}
        <h5 class="container-padding-left-4 font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}">
          {if $grandgrandchild.class_identifier|eq('product')}<img class="img-responsive max-width-2-em float-left" src="/{$grandgrandchild.data_map.image.content.original.full_path}" alt="{$grandgrandchild.name|wash()}"></img>{/if}
          <a href="{$grandgrandchild.url|ezurl('no', 'full')}" title="{$grandgrandchild.name|wash()}" class="container-padding-left font-weight-normal">{$grandgrandchild.name|wash()}</a>
        </h5>
        {/foreach}
        {/if}
      </div>
    </div>
    {/case}
    {/switch}
    {/case}
    {/switch}
    {/foreach}
  </div>
  {/case}
  {/switch}
  {/foreach}
  {def $iterations = $node.children|count()|div(8)|ceil()}
  {include uri="design:newscenter/widget/widget_product_slider.tpl"}
  {/if}
</div>

{literal}
<script type="text/javascript">
  $(window).load(function() {
  $('.shop-category .flexslider').flexslider({
  animation: "slide",
  directionNav: false,
  animationLoop: false,
  slideshow: false,
  reverse: false,
  itemWidth: 1170,
  itemMargin: 0,
  minItems: 1,
  maxItems: 1
  });
  });
</script>
{/literal}

