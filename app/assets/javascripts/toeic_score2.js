$(function(){
  $( document ).on( 'change keyup', '.f__field', function(e){ 
    
    e.preventDefault();

    // リスニングおよびリーディングのスコアが5の倍数で無い時
    // 不正なスコアと判定して「登録する」ボタン(submitボタン)を押せないようにする。
    // つまり、正しいスコアのときはsubmitボタンの[disabled]を外す。

    const input1 = $( '.f__field__score__listening_score' ).val();

    const input2 = $( '.f__field__score__reading_score' ).val();

    if (input1 % 5 == 0 && input2 % 5 == 0){

      $('.f__submit__btn').prop("disabled", false);
      $('.f__submit__errormassege').html('');

    } else {

      $('.f__submit__btn').prop("disabled", true);
      $('.f__submit__errormassege').html('入力されたスコアは5の倍数になっていますか？');

    }

  });
});