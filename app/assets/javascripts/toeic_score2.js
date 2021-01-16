$(function(){
  $( document ).on( 'change keyup', '.f__field__score__listening_score', '.f__field__score__reading_score', function(e){ 
    
    e.preventDefault();

    const input1 = document.querySelector(".f__field__score__listening_score");

    const input2 = document.querySelector(".f__field__score__reading_score");

    if (input1 % 5 === 0 && input2 % 5 === 0){

      $('.f__submit__btn').prop('disabled', false);

    } else {

      $('.f__submit__btn').prop('disabled', true);

    }

  });
});