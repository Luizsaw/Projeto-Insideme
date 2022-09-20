//Acoes de Botoes
stop();
var inicio4: Inicio = new Inicio();
inicio4.x = 1810,45;
inicio4.y = 1030;
addChild(inicio4);
inicio4.addEventListener(MouseEvent.CLICK, inicioFun4, false, 0, true);


function inicioFun4(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_4();
}
function limparBotoes_4():void
{
	inicio4.removeEventListener(MouseEvent.CLICK, inicioFun4);
	removeChild(inicio4);
	inicio4 = null;
}