$(function() {
    var drawImageOnCanvas = function(image, canvas, position) {
        var context = canvas.getContext("2d");
        context.drawImage(image, position.x, position.y);
    };
    $.fn.percentageSliderInfographic = function() {
              console.log("started:" + this.length);
        $.each(this, function(i, domNode) {
              console.log("doing background");
            var $bgImg = $($(".background", domNode)[0]);
            //create the canvas and size it according
            var canvas = document.createElement("canvas");
            $(canvas).attr("width", $bgImg.attr("width")).attr("height", $bgImg.attr("height"));
            //draw the background on the canvas
            var dfd = $.Deferred();
            var image = new Image();
            image.src = $bgImg.attr("src");
            image.onload = function() {
                drawImageOnCanvas(this, canvas, {
                    x: 0,
                    y: 0
                });
                dfd.resolve(canvas);
            };
            //draw the sliders on the canvas
            dfd.done(function() {
              console.log("doing percent");
                $(".percent").each(function(i, percentNode) {
                  var node = $(percentNode);
                    //for each percent
                    var start = [node.data("min-x"), node.data("min-y")];
                    var end = [node.data("max-x"), node.data("max-y")];
                    var percentage = node.data("percent");
                    var position = {
                        x: start[0] + (end[0] - start[0]) * percentage,
                        y: start[1] + (end[1] - start[1]) * percentage
                    };
                    var src = node.attr("src");
                    var image = new Image();
                    image.src = src;
                    image.onload = function() {
                        drawImageOnCanvas(this, canvas, position);
                    };
                });
            });
            dfd.done(function() {
                $(domNode).after(canvas).hide();
                
              console.log("write and hide");
            });
        });
    };
});