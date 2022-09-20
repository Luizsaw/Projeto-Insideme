//Acoes de Botoes
stop();
var inicio5: Inicio = new Inicio();
inicio5.x = 1810,45;
inicio5.y = 1030;
addChild(inicio5);
inicio5.addEventListener(MouseEvent.CLICK, inicioFun5, false, 0, true);


function inicioFun5(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_5();
}
function limparBotoes_5():void
{
	inicio5.removeEventListener(MouseEvent.CLICK, inicioFun5);
	removeChild(inicio5);
	inicio5 = null;
}