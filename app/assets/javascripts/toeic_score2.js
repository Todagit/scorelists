$(function(){
  $( document ).on( 'change keyup', '.f__field', function(e){ 
    
    e.preventDefault();

    // const input1 = document.querySelector(".f__field__score__listening_score");

    // const input2 = document.querySelector(".f__field__score__reading_score");

    const input1 = $( '.f__field__score__listening_score' ).val();

    const input2 = $( '.f__field__score__reading_score' ).val();

    if (input1 % 5 == 0 && input2 % 5 == 0){

      $('.f__submit__btn').prop("disabled", false);

    } else {

      $('.f__submit__btn').prop("disabled", true);

    }

  });
});