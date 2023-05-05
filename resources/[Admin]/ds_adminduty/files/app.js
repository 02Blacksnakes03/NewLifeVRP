$(function(){

    window.addEventListener("message", function(event){
        var action = event.data;
        if(action.show == true){
            document.querySelector('.container').style.display = "block";
        } else{
            document.querySelector('.container').style.display = "none";
        }
    });

});