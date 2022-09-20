//Acoes de botoes
stop();

var inicio: Inicio = new Inicio();
inicio.x = 1570;
inicio.y = 1030;
addChild(inicio);

var proximo: Proximo = new Proximo();
proximo.x = 1790;
proximo.y = 1030;
addChild(proximo);

inicio.addEventListener(MouseEvent.CLICK, inicioFun, false, 0, true);
proximo.addEventListener(MouseEvent.CLICK, proximoFun, false, 0, true);


function inicioFun(e: MouseEvent):void
{
	gotoAndStop(1, "Extra");
	limparBotoes_0();
}
function proximoFun(e: MouseEvent):void
{
	gotoAndStop(2, "Introdução");
	limparBotoes_0();
}

function limparBotoes_0():void
{
	inicio.removeEventListener(MouseEvent.CLICK, inicioFun);
	removeChild(inicio);
	inicio = null;

	proximo.removeEventListener(MouseEvent.CLICK, proximoFun);
	removeChild(proximo);
	proximo = null;
}