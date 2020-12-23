$(function(){
  $( document ).on( 'change keyup', '.f__field', function(e){ 
    
    e.preventDefault();

    let listening_score = $( '.f__field__score__listening_score' ).val();

    let reading_score = $( '.f__field__score__reading_score' ).val();
    
    let total_score = parseFloat(listening_score + reading_score);
    
    $('.new__studyscore__total__score').html(total_score);
    
  });
});