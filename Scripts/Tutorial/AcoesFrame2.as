//Acoes de Botoes
stop();
var btnTuto_2: BProximo = new BProximo();
btnTuto_2.x = 1850;
btnTuto_2.y = 1015;
addChild(btnTuto_2);
btnTuto_2.addEventListener(MouseEvent.CLICK, proximoTuto_3, false, 0, true);


function proximoTuto_3(e: MouseEvent):void
{
	removeChild(btnTuto_2);
	btnTuto_2.removeEventListener(MouseEvent.CLICK, proximoTuto_3);
	btnTuto_2 = null;
	gotoAndStop(3, "Tutorial");
}