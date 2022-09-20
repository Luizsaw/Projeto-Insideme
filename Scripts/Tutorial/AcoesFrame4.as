//Acoes de Botoes
stop();
var btnTuto_4: BProximo = new BProximo();
btnTuto_4.x = 1850;
btnTuto_4.y = 1015;
addChild(btnTuto_4);
btnTuto_4.addEventListener(MouseEvent.CLICK, proximoTuto_5, false, 0, true);


function proximoTuto_5(e: MouseEvent):void
{
	removeChild(btnTuto_4);
	btnTuto_4.removeEventListener(MouseEvent.CLICK, proximoTuto_5);
	btnTuto_4 = null;
	gotoAndStop(5, "Tutorial");
}