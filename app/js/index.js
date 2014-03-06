$(function() {

  var dp = {
    getData: function(url, data) {
    var destinations = $(".destinations");
      $.ajax({
        url: url,
        type: 'GET',
        data: data,
        dataType: "JSON",
        async: false
      })
      .done(function(response){
        destinations.html("<li>"+ response.text +"</li>");
      })
      .fail(function(data){
        destinations.append("<li class='error_message'>Sorry, no destinations found for this departure</li>");
      });
    }
  }

  var timer = null;
  $("body").on("keyup", "#departure_field", function(e) {
    clearTimeout(timer);
    var text = { text: $(this).val() };
    var uri  = "/destinations";
    timer    = setTimeout(function() { dp.getData(uri, text) }, 1000);
  });

});
