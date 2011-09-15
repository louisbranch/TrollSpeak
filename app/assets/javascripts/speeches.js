window.onload = function(){
  form_check()
}

function form_check(){
  var frm = document.getElementsByTagName("form")[0];
  frm.onsubmit = function(){
    var speech_phrase = document.getElementById("speech_phrase");
    if(!speech_phrase.value.length){
      if(!document.getElementById("form_error")){
        var div_error = document.createElement("div");
        div_error.setAttribute("id", "form_error");
        var msg_error = document.createTextNode("You must insert some text first");
        
        frm.insertBefore(div_error,frm.firstChild);
        div_error.appendChild(msg_error);
      }
      return false
    }
  }
}
