//Acoes de Botoes
stop();

var inicio6: Inicio = new Inicio();
inicio6.x = 1810,45;
inicio6.y = 1030;
addChild(inicio6);

inicio6.addEventListener(MouseEvent.CLICK, inicioFun6, false, 0, true);


function inicioFun6(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_6();
}

function limparBotoes_6():void
{
	inicio6.removeEventListener(MouseEvent.CLICK, inicioFun6);
	removeChild(inicio6);
	inicio6 = null;
}