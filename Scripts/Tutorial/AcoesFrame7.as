//Acoes de Botoes
stop();
var btnTuto_8: BProximo = new BProximo();
btnTuto_8.x = 1850;
btnTuto_8.y = 1015;
addChild(btnTuto_8);
btnTuto_8.addEventListener(MouseEvent.CLICK, proximoTuto_9, false, 0, true);


function proximoTuto_9(e: MouseEvent):void
{
	pararSonsTutorial();
	removeChild(btnTuto_8);
	btnTuto_8.removeEventListener(MouseEvent.CLICK, proximoTuto_9);
	btnTuto_8 = null;
	VariaveisLocais.iniciar = true;
	gotoAndStop(1, "Jogo");
}