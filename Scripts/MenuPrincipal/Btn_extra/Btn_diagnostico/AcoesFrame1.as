//Acoes de Botoes
stop();
var inicio7: Inicio = new Inicio();
inicio7.x = 1810,45;
inicio7.y = 1030;
addChild(inicio7);
inicio7.addEventListener(MouseEvent.CLICK, inicioFun7, false, 0, true);


function inicioFun7(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_7();
}
function limparBotoes_7():void
{
	inicio7.removeEventListener(MouseEvent.CLICK, inicioFun7);
	removeChild(inicio7);
	inicio7 = null;
}