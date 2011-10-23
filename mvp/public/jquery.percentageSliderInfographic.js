$(function() {
var drawImageOnCanvas = function(image, canvas, position) {
   var context = canvas.getContext("2d");
   context.drawImage(image, position.x, position.y);
};
jQuery.fn.percentageSliderInfographic = function() {
    $.each(this, function(i, domNode) {
      var node = $(this);
      var start = [node.data("min-x"),node.data("min-y")];
      var end = [node.data("max-x"),node.data("max-y")];
      var percentage = node.data("percent");
      var position = { x: start[0] + (end[0] - start[0]) * percentage,
          y: start[1] + (end[1] - start[1]) * percentage};
      var src = node.data("imgsrc");
      var canvas = $("#" + node.data("canvas-id"));
      var image = new Image();
      image.onLoad = function() {
        drawImageOnContext(this, canvas, position);
      };
    });
};
});
<div data-min-x="" data-min-y="" data-max-x="" data-max-y="" data-percent="" data-imgsrc="" data-canvas-id="">
</div>
