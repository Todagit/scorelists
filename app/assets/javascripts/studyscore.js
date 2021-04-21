$(function(){
  $( document ).on( 'change keyup', '.f__studyscore__field', function(e){ 
    
    e.preventDefault();

    // 各教科の点数を動的に足し算して表示する

    let japanese_score = $( '.f__studyscore__field__japanese' ).val();

    let math1a_score = $( '.f__studyscore__field__math1a' ).val();

    // ここに随時付け足す
    
    let total_score = eval(japanese_score) + eval (math1a_score);

    $('.new__studyscore__total__score').html(total_score);

  });
});