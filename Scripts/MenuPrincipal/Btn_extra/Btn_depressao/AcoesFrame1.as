//Acoes de Botoes
stop();

var inicio9: Inicio = new Inicio();
inicio9.x = 1810,45;
inicio9.y = 1030;
addChild(inicio9);

inicio9.addEventListener(MouseEvent.CLICK, inicioFun9, false, 0, true);


function inicioFun9 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_9();
}

function limparBotoes_9(): void {
	inicio9.removeEventListener(MouseEvent.CLICK, inicioFun9);
	removeChild(inicio9);
	inicio9 = null;
}