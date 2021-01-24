$(function(){
  $( document ).on( 'change keyup', '.f__field', function(e){ 
    
    e.preventDefault();

    // リスニングとリーディングのスコアを動的に足し算して表示する

    let listening_score = $( '.f__field__score__listening_score' ).val();

    let reading_score = $( '.f__field__score__reading_score' ).val();
    
    let total_score = eval(listening_score) + eval(reading_score);
    
    $('.new__toeicscore__total__score').html(total_score);
    
  });
});