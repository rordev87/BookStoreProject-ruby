  $(function() {
      var showcase = $("#showcase"), title = $('#item-title')

      showcase.Cloud9Carousel( {
        yOrigin: 42,
        yRadius: 48,
        mirror: {
          gap: 12,
          height: 0.2
        },
        buttonLeft: $("#nav > .left"),
        buttonRight: $("#nav > .right"),
        autoPlay: 1,
        bringToFront: true,
        onRendered: rendered,
        onLoaded: function() {
          showcase.css( 'visibility', 'visible' )
          showcase.css( 'display', 'none' )
          showcase.fadeIn( 1500 )
        }
      } )

      function rendered( carousel ) {
        title.text( carousel.nearestItem().element.alt )

        // Fade in based on proximity of the item
        var c = Math.cos((carousel.floatIndex() % 1) * 2 * Math.PI)
        title.css('opacity', 0.5 + (0.5 * c))
      }
      
    })

  // Toggle effect function 

jQuery(function () {
    jQuery('.showSingle').click(function () {
        var index = $(this).index(),
            newTarget = jQuery('.targetDiv').eq(index);
        jQuery('.targetDiv').not(newTarget).slideUp('slow')// the problem with the scrolling to the carousel again must be in that line
        newTarget.delay('slow').slideToggle('slow')
        
    })
}); 
// scroll to div="showSingle"
/*
$('.showSingle').click(function() {
    $('html, body').animate({
        scrollTop: $('targetDiv').offset().top
    }, 2000);
});
*/

