(function() {

  jQuery(function() {
    $(".tooltip-bottom").tooltip({
      placement: "bottom"
    });
    return $("[rel=tooltip]").tooltip();
  });

}).call(this);
