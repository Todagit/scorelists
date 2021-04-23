$(function(){
  $( document ).on( 'change keyup', '.f__studyscore__field', function(e){ 
    
    e.preventDefault();

    // 各教科の点数を動的に足し算して表示する

    let japanese_score = $( '.f__studyscore__field__japanese' ).val();

    let math1a_score = $( '.f__studyscore__field__math1a' ).val();

    let math2b_score = $( '.f__studyscore__field__math2b' ).val();

    let worldhistory = $( 'f__studyscore__field__worldhistory' ).val();

    // ここに随時付け足す
    
    let total_score = eval(japanese_score) + eval (math1a_score) + eval(math2b_score) + eval(worldhistory);

    $('.new__studyscore__total__score').html(total_score);

  });
});