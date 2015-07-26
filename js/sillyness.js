jQuery(function() {
  var textCursor = jQuery('.text-cursor'),
      minibuffer = jQuery('.minibuffer');

  setInterval(function() {
    textCursor.toggle();
  }, 500);

  jQuery('body').keypress(function(e) {
    if (e.key.length == 1) {
      minibuffer.text('Editing not possible here, use the real thing');
    } else {
      minibuffer.text('');
    }
  });
});
