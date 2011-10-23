$(function() {
  $.fn.infographic = function() {
      $.each(this, function(i, domNode) {
        var node = $(domNode);
        var cols = node.data("columns");
        var images = $("img", node);
        this.html();
        var count = 0;
        $.each(images, function(i, imgNode) {
          var $img = $(imgNode);
          var repeats = $img.data("repeat");
          var newNode = $.clone(imgNode);
          for (var j = 0;j < repeats;j++) {
            node.append(newNode);
            count++;
            if (count % cols === 0) {
              node.append(document.createElement("br"));
            }
          }
        });
      });
      return this;
  };
  $(".infographic").infographic();
});
