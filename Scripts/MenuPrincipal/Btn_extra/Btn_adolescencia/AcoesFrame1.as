//Acoes de Botoes
stop();
var inicio3: Inicio = new Inicio();
inicio3.x = 1810,45;
inicio3.y = 1030;
addChild(inicio3);
inicio3.addEventListener(MouseEvent.CLICK, inicioFun3, false, 0, true);


function inicioFun3(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_3();
}
function limparBotoes_3():void
{
	inicio3.removeEventListener(MouseEvent.CLICK, inicioFun3);
	removeChild(inicio3);
	inicio3 = null;
}