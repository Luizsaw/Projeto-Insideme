//Acoes de botoes
stop();

var inicio20: Inicio = new Inicio();
inicio20.x = 1420;
inicio20.y = 1030;
addChild(inicio20);

var voltar20: Voltar = new Voltar();
voltar20.x = 1600;
voltar20.y = 1030;
addChild(voltar20);

var proximo20: Proximo = new Proximo();
proximo20.x = 1800,6;
proximo20.y = 1030;
addChild(proximo20);

inicio20.addEventListener(MouseEvent.CLICK, inicioFun20, false, 0, true);
proximo20.addEventListener(MouseEvent.CLICK, proximoFun20, false, 0, true);
voltar20.addEventListener(MouseEvent.CLICK, voltarFun20, false, 0, true);


function inicioFun20 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_20();
}
function proximoFun20 (e: MouseEvent): void {
	gotoAndStop(3, "Referencias");
	limparBotoes_20();
}
function voltarFun20 (e: MouseEvent): void {
	gotoAndStop(1, "Referencias");
	limparBotoes_20();
}

function limparBotoes_20(): void {
	inicio20.removeEventListener(MouseEvent.CLICK, inicioFun20);
	removeChild(inicio20);
	inicio20 = null;
	
	proximo20.removeEventListener(MouseEvent.CLICK, proximoFun20);
	removeChild(proximo20);
	proximo20 = null;
	
	voltar20.removeEventListener(MouseEvent.CLICK, voltarFun20);
	removeChild(voltar20);
	voltar20 = null;
}