$(document).ready(function () {
  // add Product

  let pform = $('#pform');
  pform.on('submit', function(e){
    e.preventDefault();
    let form_data = new FormData(this);
    $.ajax({
      url : 'insertpro.php',
      method : "POST",
      data : form_data,
      contentType :false,
      processData : false,
      success : function(data){
        console.log(data);
        alert(data)
      }
      
    })
  })
  });
  