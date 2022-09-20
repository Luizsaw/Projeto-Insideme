//Acoes de botoes
stop();

var inicio1: Inicio = new Inicio();
inicio1.x = 1420;
inicio1.y = 1030;
addChild(inicio1);

var voltar1: Voltar = new Voltar();
voltar1.x = 1600;
voltar1.y = 1030;
addChild(voltar1);

var proximo1: Proximo = new Proximo();
proximo1.x = 1800,6;
proximo1.y = 1030;
addChild(proximo1);

inicio1.addEventListener(MouseEvent.CLICK, inicioFun1, false, 0, true);
proximo1.addEventListener(MouseEvent.CLICK, proximoFun1, false, 0, true);
voltar1.addEventListener(MouseEvent.CLICK, voltarFun1, false, 0, true);


function inicioFun1 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_1();
}
function proximoFun1 (e: MouseEvent): void {
	gotoAndStop(3, "Introdução");
	limparBotoes_1();
}
function voltarFun1 (e: MouseEvent): void {
	gotoAndStop(1, "Introdução");
	limparBotoes_1();
}

function limparBotoes_1(): void {
	inicio1.removeEventListener(MouseEvent.CLICK, inicioFun1);
	removeChild(inicio1);
	inicio1 = null;
	
	proximo1.removeEventListener(MouseEvent.CLICK, proximoFun1);
	removeChild(proximo1);
	proximo1 = null;
	
	voltar1.removeEventListener(MouseEvent.CLICK, voltarFun1);
	removeChild(voltar1);
	voltar1 = null;
}