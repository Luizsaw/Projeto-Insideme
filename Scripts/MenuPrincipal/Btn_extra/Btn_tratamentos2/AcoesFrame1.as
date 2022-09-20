//Acoes de Botoes
stop();

var inicio8: Inicio = new Inicio();
inicio8.x = 1810,45;
inicio8.y = 1030;
addChild(inicio8);

inicio8.addEventListener(MouseEvent.CLICK, inicioFun8, false, 0, true);


function inicioFun8(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_8();
}

function limparBotoes_8():void
{
	inicio8.removeEventListener(MouseEvent.CLICK, inicioFun8);
	removeChild(inicio8);
	inicio8 = null;
}