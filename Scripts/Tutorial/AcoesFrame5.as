//Acoes de Botoes
stop();
var btnTuto_5: BProximo = new BProximo();
btnTuto_5.x = 1850;
btnTuto_5.y = 1015;
addChild(btnTuto_5);
btnTuto_5.addEventListener(MouseEvent.CLICK, proximoTuto_6, false, 0, true);


function proximoTuto_6(e: MouseEvent):void
{
	removeChild(btnTuto_5);
	btnTuto_5.removeEventListener(MouseEvent.CLICK, proximoTuto_6);
	btnTuto_5 = null;
	gotoAndStop(6, "Tutorial");
}