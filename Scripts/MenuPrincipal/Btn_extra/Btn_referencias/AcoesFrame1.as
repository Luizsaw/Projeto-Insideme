//Acoes de botoes
stop();

var inicio19: Inicio = new Inicio();
inicio19.x = 1570;
inicio19.y = 1030;
addChild(inicio19);

var proximo19: Proximo = new Proximo();
proximo19.x = 1790;
proximo19.y = 1030;
addChild(proximo19);

inicio19.addEventListener(MouseEvent.CLICK, inicioFun19, false, 0, true);
proximo19.addEventListener(MouseEvent.CLICK, proximoFun19, false, 0, true);


function inicioFun19 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_19();
}
function proximoFun19 (e: MouseEvent): void {
	gotoAndStop(2, "Referencias");
	limparBotoes_19();
}

function limparBotoes_19(): void {
	inicio19.removeEventListener(MouseEvent.CLICK, inicioFun19);
	removeChild(inicio19);
	inicio19 = null;
	
	proximo19.removeEventListener(MouseEvent.CLICK, proximoFun19);
	removeChild(proximo19);
	proximo19 = null;
}