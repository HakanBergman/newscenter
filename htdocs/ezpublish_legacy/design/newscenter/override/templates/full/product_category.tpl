<div class="container">
  <div class="shop-row shop-current">
    <h2>Aktuellt just nu</h2>
    <div class="flexslider carousel">
      <ul class="slides">
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-1.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-2.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-1.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-2.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-1.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-2.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-1.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-2.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-1.jpg" alt="" />
          </a>
          <strong class="title">Five Pioneers Of Photography Set </strong>
          <span class="price">200 kr</span>
          <a class="std-btn" href="#">köp</a>
        </li>
        <li>
          <a href="#" class="img-link">
            <img src="images/carousel-dummy-2.jpg" alt="" />
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

  // Released under MIT license: http://www.opensource.org/licenses/mit-license.php
  $('[placeholder]').focus(function() {
  var input = $(this);
  if (input.val() == input.attr('placeholder')) {
  input.val('');
  input.removeClass('placeholder');
  }
  }).blur(function() {
  var input = $(this);
  if (input.val() == '' || input.val() == input.attr('placeholder')) {
  input.addClass('placeholder');
  input.val(input.attr('placeholder'));
  }
  }).blur().parents('form').submit(function() {
  $(this).find('[placeholder]').each(function() {
  var input = $(this);
  if (input.val() == input.attr('placeholder')) {
  input.val('');
  }
  })
  });

  $(window).load(function() {
  $('.media-wrapper .flexslider').flexslider({
  //animationSpeed: 600,
  //animation: "slide",
  start: function(slider) {
  $('.media-wrapper .total-slides').text(slider.count);
  $('.media-wrapper .flex-control-paging').append('<li class="total">
    /<span>' + slider.count + '</span>
  </li>');
  },
  after: function(slider) {
  $('.media-wrapper .current-slide').text(slider.currentSlide);
  }
  });

  $('.friends-wrapper li a img').maxSide({maxSide: '100'});

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

  $('.shop-category .flexslider').flexslider({
  animation: "slide",
  directionNav: false,
  animationLoop: false,
  slideshow: false,
  reverse: false,
  itemWidth: 605,
  itemMargin: 0,
  minItems: 1,
  maxItems: 1
  });

  $('.fotografikollen .pane').flexslider({
  animation: "slide",
  animationLoop: true,
  slideshow: false
  });

  /* $('.quiz .pane').flexslider({
  animation: "slide",
  controlNav: false,
  animationLoop: false,
  slideshow: false
  }); */

  $('.quiz .pane').flexslider({
  animation: "slide",
  controlNav: false,
  directionNav: false,
  animationLoop: false,
  slideshow: false,
  smoothHeight: true,
  start: function(slider) {
  $('.quiz-pane').data('answers', []);
  $('.quiz-pane').data('option', "");
  $('.quiz-pane').delay(1000).fadeTo('slow', 1);
  $('.begin').click(function(e) {
  e.preventDefault();
  var count = slider.count-1;
  slider.flexAnimate(slider.getTarget("next"));
  $('.quiz .flex-control-paging').append('<li class="total">
    /<span>' + count + '</span>
  </li>');
  });
  $('.q-radioBtn').click(function(e) {
  $('.quiz-pane').data('option', $(this).val());
  $("#"+this.name+"").removeAttr("disabled");
  });
  $('.next').click(function(e) {
  e.preventDefault();
  $('.quiz-pane').data('answers').push($('.quiz-pane').data('option'));
  slider.flexAnimate(slider.getTarget("next"));
  });
  $('.finished').click(function(e) {
  e.preventDefault();
  $('.flex-viewport').hide();
  $('.quiz-pane').data('answers').push($('.quiz-pane').data('option'));
  $('.pane').css('padding', '15px');
  $('.pane').css('padding-bottom', '0px');
  $('.pane').append('<p class="done">Du kan se ditt resultat här nedanför.</p>');

  /* Generate result */
  var correct_answers = 0;
  $.each($('.quiz-pane').data('answers'), function(key, value) {
  var values = value.split('|');
  if (values[1] == values[2]) { var css_class='correct'; correct_answers += 1; } else { var css_class = 'incorrect'; }
  $('.result').append('<tr>
    <th>'+values[0]+'</th>
    <td>'+values[1]+'</td>
    <td class="'+css_class+'">'+values[2]+'</td>
  </tr>');
  });
  $('.result').append('<tr class="total-result">
    <th></th>
    <td>Totalt antal rätt</td>
    <td>'+correct_answers+'</td>
  </tr>');
  $('.quiz-res').delay(1000).fadeTo('slow', 1);
  });
  },
  after: function(slider) {
  $('.flex-active').text(slider.currentSlide);
  $('.flex-control-nav').show('fast');
  }
  });


  $('#footer .flexslider').flexslider({
  animation: "slide",
  directionNav: false,
  controlNav: false,
  animationLoop: true,
  slideshow: true,
  slideshowSpeed: 6000,
  animationSpeed: 800,
  itemWidth: 160,
  itemMargin: 0,
  minItems: 3,
  maxItems: 5,
  move: 2,
  pauseOnHover: true
  });




  });

  $(document).ready(function(){
  //justifySponsors();
  $(window).bind('resize', resizeWindow);
  $('.f-dk-1').dropkick({
  theme : 'f-dk-1'
  });
  $('.friends-wrapper li a img').maxSide({maxSide: '100'});
  hideRdoInfo ();
  $('.label-radio').click(function(){
  setupLabel();
  });
  $('.label-check').click(function(){
  setupLabel();
  });
  setupLabel();
  //toggleMenu();
  tabSwitch();
  $('#subMenu li.active').addClass('expanded');

  /* Enable Login button to show login area */
  $('.functions-menu .login').click(function() {
  $('#loginArea').slideDown('slow');
  });

  });



  function resizeWindow( e ) {
  var newWindowWidth = $(window).width();
  if ( newWindowWidth < 720 ) {
		$('body').addClass('small-window');
	} else {
		$('body').removeClass('small-window');
	}
	
	$('.friends-wrapper li a img').maxSide({maxSide: '100'});
}

function justifySponsors() {
		
	var menuItems  = $('.sponsors li').length,
		menuWidth  = $('.sponsors').width(),
		totalWidth = 0,
		margin = 0;

	$('.sponsors li').each(function (i, e) {
		totalWidth += $(e).width();
	});
	
	margin = (menuWidth - totalWidth) / ($('.sponsors li').length - 1);
	margin = parseInt( margin );

	$('.sponsors li').each(function (i, e) {
		if ( i < $('.sponsors li').length - 1 ) {
			$(e).css('margin-right', margin - 1);
		}
	});
}

function highestImg(){
	var highestImg = Math.max($('').height(),$('#eqCol2').height(),$('#eqCol3').height());
	var paneHeight = highestCol - 40;
	$('.row-col').height(highestCol);
	$('.tabbed-info .panes').height(paneHeight);
}

(function($) {
	$.fn.maxSide = function(settings) {

		// If no paramaters supplied...
		settings = $.extend({
			maxSide: 100
		}, settings);
			
		return this.each(function () {
			var maximum = settings.maxSide,
				thing = $(this),
				thewidth = thing.width(),
	           	theheight = thing.height();

			if ( thewidth >= theheight ) {
				var thingHeight = ((thing.height()) / 2);
				//alert(thingHeight);
				thing.css({'line-height':'100%', 'position': 'relative', 'top': '50%', 'margin-top': '-' + thingHeight + 'px'});
				//thing.parent().css({'line-height':'100%'});
			}

			if ( theheight >= thewidth ) {
				var thingHeight = ((thing.height()) / 2);
				thing.css({'max-height':'90%', 'line-height':'100%', 'position': 'relative', 'top': '50%', 'margin-top': '-' + thingHeight + 'px'});
			}
		});	
	};
})(jQuery);

function hideRdoInfo () {
	$('.membership-option-inner').addClass('visuallyhidden');
	$('.membership-option:first-child .membership-option-inner').removeClass('visuallyhidden');
	$(".membership-option label input").on('change', function(ev) {
		$('.membership-option-inner').addClass('visuallyhidden');
		var obj = $(ev.currentTarget).closest(".membership-option");
		$('.membership-option-inner', obj).removeClass('visuallyhidden');
	});
}

function setupLabel() {
	if ($('.label-check input').length) {
		$('.label-check').each(function(){ 
			$(this).removeClass('c-on');
		});
		$('.label-check input:checked').each(function(){ 
			$(this).parent('label').addClass('c-on');
		});                
	};
	if ($('.label-radio input').length) {
		$('.label-radio').each(function(){ 
			$(this).removeClass('r-on');
		});
		$('.label-radio input:checked').each(function(){ 
			$(this).parent('label').addClass('r-on');
		});
	};
}



// Toggle expandable menu
function toggleMenu() {	
	var menu_a = $('#subMenu  > ul > li.has-children > a');
	var sub_menu = $('#subMenu  > ul > li.has-children > ul');		

	sub_menu.hide(); 

	menu_a.click(function(e) {
		e.preventDefault();
		if ( !$(this).hasClass('active') ) {
			menu_a.removeClass('active');
			sub_menu.filter(':visible').slideUp('normal');
			$(this).addClass('active').next().stop(true,true).slideDown('normal');
		} else {
			$(this).removeClass('active');
			$(this).next().stop(true,true).slideUp('normal');
		}
	});
}

function tabSwitch() {
	$('ul.tabs').each(function(){
	    // For each set of tabs, we want to keep track of
	    // which tab is active and it's associated content
	    var $active, $content, $links = $(this).find('a');

	    // If the location.hash matches one of the links, use that as the active tab.
	    // If no match is found, use the first link as the initial active tab.
	    $active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);
	    $active.addClass('active');
	    $content = $($active.attr('href'));

	    // Hide the remaining content
	    $links.not($active).each(function () {
	        //$($(this).attr('href')).hide();
	        $($(this).attr('href')).addClass('hide');
	    });

	    // Bind the click event handler
	    $(this).on('click', 'a', function(e){
	        // Make the old tab inactive.
	        $active.removeClass('active');
	        $content.addClass('hide');
	        $content.removeClass('show');

	        // Update the variables with the new link and content
	        $active = $(this);
	        $content = $($(this).attr('href'));

	        // Make the tab active.
	        $active.addClass('active');
	        $content.removeClass('hide');
	        $content.addClass('show');

	        // Prevent the anchor's default click action
	        e.preventDefault();
	    });
	});
}
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