//Acoes de botoes
stop();

var inicio13: Inicio = new Inicio();
inicio13.x = 1570;
inicio13.y = 1030;
addChild(inicio13);

var proximo13: Proximo = new Proximo();
proximo13.x = 1790;
proximo13.y = 1030;
addChild(proximo13);

inicio13.addEventListener(MouseEvent.CLICK, inicioFun13, false, 0, true);
proximo13.addEventListener(MouseEvent.CLICK, proximoFun13, false, 0, true);


function inicioFun13 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_13();
}
function proximoFun13 (e: MouseEvent): void {
	gotoAndStop(2, "Causas Depressão Adolescência");
	limparBotoes_13();
}

function limparBotoes_13(): void {
	inicio13.removeEventListener(MouseEvent.CLICK, inicioFun13);
	removeChild(inicio13);
	inicio13 = null;
	
	proximo13.removeEventListener(MouseEvent.CLICK, proximoFun13);
	removeChild(proximo13);
	proximo13 = null;
}