//Acoes de Botoes
stop();
var btnTuto_7: BProximo = new BProximo();
btnTuto_7.x = 1850;
btnTuto_7.y = 1015;
addChild(btnTuto_7);
btnTuto_7.addEventListener(MouseEvent.CLICK, proximoTuto_8, false, 0, true);


function proximoTuto_8(e: MouseEvent):void
{
	removeChild(btnTuto_7);
	btnTuto_7.removeEventListener(MouseEvent.CLICK, proximoTuto_8);
	btnTuto_7 = null;
	gotoAndStop(7, "Tutorial");
}