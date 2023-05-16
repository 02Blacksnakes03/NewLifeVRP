var privatefraks = false;
var privatefraktionlist = [];

function requestPrivatefraks() {
    $('ul').empty();

    var list = "";

    privatefraktionlist.forEach(function(obj) {
        list += `
                <li>
                    <div class="listitem" data-ischar="false" data-charid="` + obj.id + `">
                        <div class="listimage">
                            <img src="` + obj.image + `" alt="">
                        </div>
                        <div class="listtext4">
                            <p>` + obj.name + `</p>
                            <br>
                        </div>
                    </div>   
                </li>
        `;
    });

    $('ul').html(list);
}

function resetFrakauswahl() {
    $('ul').empty();
    $('ul').html(
        `
                <li>
                    <div class="listitem" data-ischar="false" data-charid="1">
                        <div class="listimage">
                            <img src="https://i.imgur.com/G7Zsa6B.png" alt="">
                        </div>
                        <div class="listtext4">
                            <p>Grove Street</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="2">
                        <div class="listimage">
                            <img src="https://imgur.com/kRxqz58.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Crips</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="5">
                        <div class="listimage">
                            <img src="https://i.imgur.com/GMoFYQw.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Bloods</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="6">
                        <div class="listimage">
                            <img src="https://i.imgur.com/GMTkpeF.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Ballas</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="12">
                        <div class="listimage">
                            <img src="https://i.imgur.com/rkQgm6k.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>MG13</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="11">
                        <div class="listimage">
                            <img src="https://i.imgur.com/32cTPcH.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Vagos</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="15">
                        <div class="listimage">
                            <img src="https://imgur.com/f86xZ9L.png" alt="">
                        </div>
                        <div class="listtext3">
                            <p>Medellin Kartell</p>
                            <br>
                        </div>
                    </div>   
                </li>


                <li>
                    <div class="listitem" data-ischar="false" data-charid="4">
                        <div class="listimage">
                            <img src="https://i.imgur.com/W4vVOLS.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>LCN</p>
                            <br>
                        </div>
                    </div>   
                </li>

                <li>
                    <div class="listitem" data-ischar="false" data-charid="14">
                        <div class="listimage">
                            <img src="https://imgur.com/1P2vQgg.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Midnight</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="9">
                        <div class="listimage">
                            <img src="https://abload.de/img/17.a00717c7i5jx9.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Triaden</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="17">
                        <div class="listimage">
                            <img src="https://imgur.com/4ZczdfK.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Brigada</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="16">
                        <div class="listimage">
                            <img src="https://i.imgur.com/xpFqm8r.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Banditos</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="8">
                        <div class="listimage"> 
                            <img src="https://imgur.com/SyutoyE.png" alt="">
                        </div>
                        <div class="listtext2">
                            <p>Sinaloa Kartell</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="13">
                        <div class="listimage">
                            <img src="https://i.imgur.com/f9LVIlZ.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>LSPD</p>
                            <br>
                        </div>
                    </div>   
                </li>
                <li>
                    <div class="listitem" data-ischar="false" data-charid="3">
                        <div class="listimage">
                            <img src="https://i.imgur.com/Yvs7H0b.png" alt="">
                        </div>
                        <div class="listtext">
                            <p>Yakuza</p>
                            <br>
                        </div>
                    </div>   
                </li>
        `
    );
}

$(".listitem").each(function( index ) {
    $(this).click(function() {
        $(".active").each(function( index ) {
            $(this).removeClass("active");
            $(this).addClass("listitem");
        });
        $(this).removeClass('listitem');
        $(this).addClass("active");
    });
});

$("#play-char").click(function () {
    $.post("http://ag_fraksystem/CharacterChosen", JSON.stringify({
        charid: $('.active').attr("data-charid"),
        ischar: $('.active').attr("data-ischar"),
    }));

});

$('#privatefraks').click(function() {
    if(privatefraks == false) {
        $('ul').empty();
        $(this).html('<i class="fas fa-arrow-left"></i> NORMALE FRAKTIONEN');
        privatefraks = true;
        requestPrivatefraks();
    } else {
        $(this).html('PRIVATE FRAKTIONEN <i class="fas fa-arrow-right"></i>');
        privatefraks = false;
        resetFrakauswahl();
    }

    $(".listitem").each(function( index ) {
        $(this).click(function() {
            $(".active").each(function( index ) {
                $(this).removeClass("active");
                $(this).addClass("listitem");
            });
            $(this).removeClass('listitem');
            $(this).addClass("active");
        });
    });    
});


(() => {
    Kashacter = {};

    Kashacter.ShowUI = function(data) {
        $('body').show();
        privatefraktionlist = data.private;
    };

    Kashacter.CloseUI = function() {
        $('body').hide();
        $("body").removeClass('active');
        $("#delete").css({"display":"none"});
    };
    window.onload = function(e) {
        window.addEventListener('message', function(event) {
            switch(event.data.action) {
                case 'openui':
                    Kashacter.ShowUI(event.data);
                    break;
                case 'close':
                    Kashacter.CloseUI();
                    break;
		
            }
        })
    }

})();