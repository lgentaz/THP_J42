//= require activestorage
//= require_tree .


$(document).ready(function() {
    var tblClass = $('div[class="container"] ul:first');
    tblClass.addClass("nav nav-tabs");
    var indTab = $('div[class="container"] ul:first li:first');
    indTab.addClass("active");
    var cards = $('div[class="card"]');
    $.each(cards, function(i){
//        console.log(cards[i].parentElement.className)
//        if (cards[i].parentElement.className !== "active"){
//            cards[i].style.display ='none';
        }  
    });
});