/***********************************************************
EFECTO DHTML DE ORBITACIÓN DE IMAGENES
CREADO: POR HAROLD I JIMENEZ H
FECHA: ABRIL 24 DE 2009
FECHA ACTUALIZACION: SEPTIEMBRE 24 2014
***********************************************************/
var arr = new Array(10);
var BASETIME = 80;
var GRAVITY = 5.81;

var frog = new Frog(0, 500, 0, 0);

var docready = function () {
    var width = $(window).width();
    var height = $(window).height();

    var content = $(document);
    for (var index = 0; index < arr.length; index++) {
        arr[index] = new BouncingItem(index, Math.round((width - 32) * Math.random()), height - 32, randomXSpeed(), -randomYSpeed(), 0, ballIndex());
        if (content != null)
            container.innerHTML += arr[index]._frag;

    }

    setInterval("render()", BASETIME);
	
    //container.innerHTML += frog._frag;
	
	$(document).keydown(function() {
	  if(event.keyCode == 39)//derecha
		frog._left = parseInt(frog._left) + 50;
	  else if(event.keyCode == 37)//izquierda
		frog._left = parseInt(frog._left) - 50;
			  
	});
}

function render() {
    var width = $(window).width();
    var height = $(window).height();

    for (var index = 0; index < arr.length; index++) {
        arr[index]._time++;
        arr[index]._totaltime++;
        arr[index]._top = calcGravPos(arr[index]._yspeed, height - 32, arr[index]._time);
        //arr[index]._left += parseInt((arr[index]._xdir >= 0) ? dampingFunction(arr[index]._xspeed, 0.01, arr[index]._totaltime) : -dampingFunction(arr[index]._xspeed, 0.01, arr[index]._totaltime));

        if (arr[index]._left < 0) {
            arr[index]._left = 0;
            arr[index]._xdir = 1;
        } else if ((arr[index]._left + 32) >= width) {
            arr[index]._left = (width - 32);
            arr[index]._xdir = -1;
        }

        if ((arr[index]._top + 32) > height) {
            arr[index]._top = (height - 32);
            arr[index]._time = 0;
            //arr[index]._yspeed = dampingFunction(arr[index]._yspeed, 0.0005, arr[index]._totaltime);
        }

        if ($("#bi" + index) != null) {
            $("#bi" + index).css("left", arr[index]._left);
            $("#bi" + index).css("top", arr[index]._top);
        }
		
    }

		var frog = $("#frog");
		if(frog != null)
		{
            frog.css("left", frog._left);
            frog.css("top", frog._top);
		}
}

function BouncingItem(index, left, top, xspeed, yspeed, elasticity, ballindex) {
    this._frag = "<div id=\"bi" + index + "\" style=\"position:absolute;left:0px;top:0px;\"><img src=\"./truck" + ballindex + ".png\" border=\"0\"></div>";
    this._left = left;
    this._top = top;
    this._xspeed = xspeed;
    this._yspeed = yspeed;
    this._elasticity = elasticity;
    this._xdir = randomSign();
    this._time = 0;
    this._totaltime = 0;
}

function Frog(left, top, xspeed, yspeed) {
    this._frag = "<div id=\"frog\" style=\"position:absolute;left:0px;top:200px;\"><img src=\"./frog.png\" border=\"0\"></div>";
    this._left = left;
    this._top = top;
    this._xspeed = xspeed;
    this._yspeed = yspeed;
    this._time = 0;
    this._totaltime = 0;
}

function randomYSpeed() {
    return 80 * Math.random() + 40;
}

function randomXSpeed() {
    return 50 * Math.random() + 50;
}

function calcGravPos(v0, y0, time) {
    return 0.5 * GRAVITY * Math.pow(time, 2) + v0 * time + y0;
}

function dampingFunction(a, b, time) {
    return (a * Math.exp(-time * b));//
}

function ballIndex() {
    var index = 30 * Math.random();
    if (index < 10)
        return 0;
    else if (index >= 10 && index < 20)
        return 1;
    else if (index >= 20)
        return 2;
}

function randomSign() {
    var val = 2 * Math.random() - 1;
    val = (val >= 0) ? 1 : -1;
    return val;
}