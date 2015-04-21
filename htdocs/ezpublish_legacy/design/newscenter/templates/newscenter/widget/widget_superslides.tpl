<div id="slides">
  <ul class="slides-container">
    <li>
      <img src="http://flickholdr.com/1000/800" alt="">
      <div class="container">
        Slide one
      </div>
    </li>
    <li>
      <img src="http://flickholdr.com/1000/800/space" alt="">
      <div class="container">
        Slide two
      </div>
    </li>
    <li>
      <img src="http://flickholdr.com/1000/800/tech" alt="">
      <div class="container">
        Slide three
      </div>
    </li>
  </ul>
  <nav class="slides-navigation">
    <a href="#" class="next">Next</a>
    <a href="#" class="prev">Previous</a>
  </nav>
</div>

<script type="text/javascript">
	{literal}
		$(document).ready(function() {
			$('#slides').superslides();
		});
	{/literal}
</script>