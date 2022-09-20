//Acoes de Botoes
stop();

var inicio11: Inicio = new Inicio();
inicio11.x = 1570;
inicio11.y = 1030;
addChild(inicio11);

var proximo11: Proximo = new Proximo();
proximo11.x = 1790;
proximo11.y = 1030;
addChild(proximo11);

inicio11.addEventListener(MouseEvent.CLICK, inicioFun11, false, 0, true);
proximo11.addEventListener(MouseEvent.CLICK, proximoFun11, false, 0, true);


function inicioFun11 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_11();
}
function proximoFun11 (e: MouseEvent): void {
	gotoAndStop(2, "Suicidio");
	limparBotoes_11();
}

function limparBotoes_11(): void {
	inicio11.removeEventListener(MouseEvent.CLICK, inicioFun11);
	removeChild(inicio11);
	inicio11 = null;
	
	proximo11.removeEventListener(MouseEvent.CLICK, proximoFun11);
	removeChild(proximo11);
	proximo11 = null;
}