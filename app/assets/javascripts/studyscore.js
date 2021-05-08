$(function(){
  $( document ).on( 'change keyup', '.f__studyscore__field', function(e){ 
    
    e.preventDefault();

    // 各教科の点数を動的に足し算して表示する

    let japanese = $( '.f__studyscore__field__japanese' ).val();

    let math1a = $( '.f__studyscore__field__math1a' ).val();

    let math2b = $( '.f__studyscore__field__math2b' ).val();

    let worldhistory = $( 'f__studyscore__field__worldhistory' ).val();

    let japanesehistory = $( 'f__studyscore__field__japanesehistory' ).val();

    let modernsociety = $( 'f__studyscore__field__modernsociety' ).val();

    let geography = $( 'f__studyscore__field__geography' ).val();

    let chemistry = $( 'f__studyscore__field__chemistry' ).val();

    let physics = $( 'f__studyscore__field__physics' ).val();

    let english_l = $( 'f__studyscore__field__english_l' ).val();

    let english_r = $( 'f__studyscore__field__english_r' ).val();

    // let other1 = $( 'f__studyscore__field__other1' ).val();

    // let other2 = $( 'f__studyscore__field__other2' ).val();


    // ここに随時付け足す
    
    let total_score = eval(japanese) 
                        + eval(math1a) 
                        + eval(math2b) 
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