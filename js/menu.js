function showInfo(str) {
  if (str=="") {
    document.getElementById("o1").innerHTML="";
    return;
  }
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("o1").innerHTML=this.responseText;
    }
  }
  xmlhttp.open("GET","getItems.php?q="+str,true);
  xmlhttp.send();
}
function getData(str) {
if (str=="") {
  document.getElementById("o2").innerHTML="";
  return;
}
var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange=function() {
  if (this.readyState==4 && this.status==200) {
    document.getElementById("o2").innerHTML=this.responseText;
  }
}
xmlhttp.open("GET","getDetail.php?q="+str,true);
xmlhttp.send();
}

let stateCheck = setInterval(() => {
  if (document.readyState === 'complete') {
    clearInterval(stateCheck);
    // document ready
    document.getElementById("btn1").click();
  }
}, 100);

$('.btn').click(function() {
  var LDiv = $('.menuMaster').children().first();
  $(LDiv).empty();
  var target = '#'+ $(this).data('target');
  $(target).clone().appendTo($(LDiv));
  $(target).show();
  console.log("PRINTING : " +target);
});


// transparent overlay
function overlayOn() {
    document.getElementById("overlay").style.display = "block";
}

function overlayOff() {
    document.getElementById("overlay").style.display = "none";
}
