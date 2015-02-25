<div class="container">
  <div class="shop-row shop-current">
    <h2>Aktuellt just nu</h2>
    <div class="flexslider carousel">
      <ul class="slides">
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
      </ul>
    </div>
  </div>  
</div>


{literal}
<script type="text/javascript">
  $(window).load(function() {
    $('.shop-row .flexslider').flexslider({
      animation: "slide",
      directionNav: false,
      animationLoop: false,
      slideshow: false,
      itemWidth: 105,
      itemMargin: 20,
      minItems: 2,
      maxItems: 8
    });
  });
</script>
{/literal}



<div class="container bg-black">
	<h2>{$node.name|wash()} <a href="/content/edit/{$node.contentobject_id}" title="Redigera {$node.name|wash()}">Redigera {$node.name|wash()}</a></h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
  {if $node.children}
    <div class="col-lg-12 col-md-12 col-sm-12">
      {foreach $node.children as $list}      								
					<ul>
							<li class="link-color-beige-hover">
                <a class="font-weight-normal" href="{$list.url|ezurl('no', 'full')}" title="{$list.name|wash()}">{$list.name|wash()}</a>
                <a href="/content/edit/{$list.contentobject_id}" title="Redigera {$list.name|wash()}">Redigera {$list.name|wash()}</a>
                <form method="post" action="/content/action">
                    <input type="hidden" name="TopLevelNode" value="{$list.node_id}"></input>
                    <input type="hidden" name="ContentNodeID" value="{$list.node_id}"></input>
                    <input type="hidden" name="ContentObjectID" value="{$list.contentobject_id}"></input>
                    <input class="button" type="submit" name="ActionRemove" value="Radera {$list.name|wash()}" title="Radera det här objektet."></input>
                </form>
              </li>            
					</ul>
      {/foreach}
    </div>
  {/if}

  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="61">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa nytt Land"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>

  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="47">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa ny Produktlista"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>
 
</div>