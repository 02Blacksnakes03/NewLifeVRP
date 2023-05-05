var _$_19fb = ["message", "action", "data", "open", "close", "addEventListener", "ready", "keydown", "which", "visible", "Hud", "http://inventory/close", "post", "dismiss", "Inventory", "show", "Windows", "Progressbar", "setProgressbar", "penis"];
showHud();
$(document)[_$_19fb[6]](function() {
    window[_$_19fb[5]](_$_19fb[0], function(_0x114C1) {
        if (_0x114C1[_$_19fb[2]][_$_19fb[1]] == _$_19fb[3]) {
            open(_0x114C1[_$_19fb[2]][_$_19fb[2]])
        } else {
            if (_0x114C1[_$_19fb[2]][_$_19fb[1]] == _$_19fb[4]) {
                close()
            }
        }
        if (_0x114C1[_$_19fb[2]][_$_19fb[1]] == _$_19fb[19]) {
            open2(_0x114C1[_$_19fb[2]][_$_19fb[2]])
        }
    })
});
document[_$_19fb[5]](_$_19fb[7], (_0x114C1) => {
    if (_0x114C1[_$_19fb[8]] === 113) {
        close()
    }
});

function showHud() {
    components.Hud.visible = true
}

function close() {
    setTimeout(() => {
        $[_$_19fb[12]](_$_19fb[11]);
        components[_$_19fb[14]][_$_19fb[13]]()
    }, 500)
}

function open(_0x14306) {
    components.Windows.show("MethLabor", JSON.stringify({
        temperature: {
          "min": 100,
          "max": 1500,
          "current": 123,
          "steps": 10
        },
        pressure: {
          "min": 1,
          "max": 10,
          "current": 5
        },
        stirring: {
          "min": 1,
          "max": 300,
          "current": 123
        },
        amount: {
          "min": 5,
          "max": 15,
          "current": 7
        },
        status: true
      }));
}

function open2(_0x14300) {
    components[_$_19fb[17]][_$_19fb[18]](_0x14300)
}