$( document ).ready(function(){
  
  // List.js Plugun
  var user_phones_list = new List('user_phones_list', {valueNames: [ 'phone', 'condition', 'type', 'selling' ], page: 1000});
  var phones_list = new List('phones_list', {valueNames: ['name'], page: 1000})

  // FancyBox

  $(".fancybox").fancybox({
    openEffect  : 'none',
    closeEffect : 'none',
    helpers : {
      title : null            
    }    
  });

  $('#fileupload').fileupload({
    dataType: 'json',
    beforeSend: function(){
      $(".gallery").append("<span class='image-placeholder'>Loading...</span>")
    },
    done: function (e, data) {
      res = data.result
      $(".image-placeholder").last().remove();
      $( ".gallery" ).append( res.html );
    }
  });

  $(".remove_picture").on("click", function(){
    var parent = $(this).parent();
    var id = parent.data('pictureid');
    var url = $(this).data('url');
    $.ajax({
      type: "DELETE",
      url: url,
      success: function(data){
        parent.remove();
      }
    });
    
  });

});
