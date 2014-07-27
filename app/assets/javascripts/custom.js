$( document ).ready(function(){
  var user_phones_list = new List('user_phones_list', {valueNames: [ 'phone', 'condition', 'type', 'selling' ], page: 1000});
  var phones_list = new List('phones_list', {valueNames: ['name'], page: 1000})
});
