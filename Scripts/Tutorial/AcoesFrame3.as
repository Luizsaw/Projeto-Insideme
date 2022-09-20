//Acoes de Botoes
stop();
var btnTuto_3: BProximo = new BProximo();
btnTuto_3.x = 1850;
btnTuto_3.y = 1015;
addChild(btnTuto_3);
btnTuto_3.addEventListener(MouseEvent.CLICK, proximoTuto_4, false, 0, true);


function proximoTuto_4(e: MouseEvent):void
{
	removeChild(btnTuto_3);
	btnTuto_3.removeEventListener(MouseEvent.CLICK, proximoTuto_4);
	btnTuto_3 = null;
	gotoAndStop(4, "Tutorial");
}