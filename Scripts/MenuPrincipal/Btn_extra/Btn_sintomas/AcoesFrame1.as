//Acoes de Botoes
stop();
var inicio10: Inicio = new Inicio();
inicio10.x = 1810,45;
inicio10.y = 1030;
addChild(inicio10);
inicio10.addEventListener(MouseEvent.CLICK, inicioFun10, false, 0, true);


function inicioFun10(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_10();
}
function limparBotoes_10():void
{
	inicio10.removeEventListener(MouseEvent.CLICK, inicioFun10);
	removeChild(inicio10);
	inicio10 = null;
}