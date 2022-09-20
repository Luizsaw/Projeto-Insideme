//Acoes de botoes
stop();

var inicio17: Inicio = new Inicio();
inicio17.x = 1570;
inicio17.y = 1030;
addChild(inicio17);

var proximo17: Proximo = new Proximo();
proximo17.x = 1790;
proximo17.y = 1030;
addChild(proximo17);

inicio17.addEventListener(MouseEvent.CLICK, inicioFun17, false, 0, true);
proximo17.addEventListener(MouseEvent.CLICK, proximoFun17, false, 0, true);


function inicioFun17 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_17();
}
function proximoFun17 (e: MouseEvent): void {
	gotoAndStop(2, "Tratamento Depressão Adolescência");
	limparBotoes_17();
}

function limparBotoes_17(): void {
	inicio17.removeEventListener(MouseEvent.CLICK, inicioFun17);
	removeChild(inicio17);
	inicio17 = null;
	
	proximo17.removeEventListener(MouseEvent.CLICK, proximoFun17);
	removeChild(proximo17);
	proximo17 = null;
}