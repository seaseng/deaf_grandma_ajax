$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  $('form').on('submit', function(evnt) {
    evnt.preventDefault();
    var my_phrase = $(this).serialize();
    
    console.log('Submit: ' + my_phrase);
    // debugger;
    var ajax_submit = $.post('/grandma', my_phrase);

    ajax_submit.done(function( data ) {
      $('form').nextAll().remove();
      console.log('AJAX ' + data);
      // $('#grandma_response').text(data);
      $('form').after('<p>' + data + '</p>');

    });
  });

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
