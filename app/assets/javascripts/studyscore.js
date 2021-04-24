$(function(){
  $( document ).on( 'change keyup', '.f__studyscore__field', function(e){ 
    
    e.preventDefault();

    // 各教科の点数を動的に足し算して表示する

    const japanese_score = $( '.f__studyscore__field__japanese' ).val();

    const math1a_score = $( '.f__studyscore__field__math1a' ).val();

    const math2b_score = $( '.f__studyscore__field__math2b' ).val();

    const worldhistory = $( 'f__studyscore__field__worldhistory' ).val();

    const japanesehistory = $( 'f__studyscore__field__japanesehistory' ).val();

    const modernsociety = $( 'f__studyscore__field__modernsociety' ).val();

    const geography = $( 'f__studyscore__field__geography' ).val();

    const chemistry = $( 'f__studyscore__field__chemistry' ).val();

    const physics = $( 'f__studyscore__field__physics' ).val();

    const english_l = $( 'f__studyscore__field__english_l' ).val();

    const english_r = $( 'f__studyscore__field__english_r' ).val();

    // const other1 = $( 'f__studyscore__field__other1' ).val();

    // const other2 = $( 'f__studyscore__field__other2' ).val();


    // ここに随時付け足す
    
    const total_score = eval(japanese_score) 
                        + eval (math1a_score) 
                        + eval(math2b_score) 
                        + eval(worldhistory)
                        + eval(japanesehistory)
                        + eval(modernsociety)
                        + eval(geography)
                        + eval(chemistry)
                        + eval(physics)
                        + eval(english_l)
                        + eval(english_r);

    $('.new__studyscore__total__score').html(total_score);

  });
});