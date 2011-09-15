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

// Google Analytics

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-4624241-4']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
