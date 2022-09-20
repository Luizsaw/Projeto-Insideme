//Acoes de botoes
stop();

var inicio14: Inicio = new Inicio();
inicio14.x = 1420;
inicio14.y = 1030;
addChild(inicio14);

var voltar14: Voltar = new Voltar();
voltar14.x = 1600;
voltar14.y = 1030;
addChild(voltar14);

var proximo14: Proximo = new Proximo();
proximo14.x = 1800,6;
proximo14.y = 1030;
addChild(proximo14);

inicio14.addEventListener(MouseEvent.CLICK, inicioFun14, false, 0, true);
proximo14.addEventListener(MouseEvent.CLICK, proximoFun14, false, 0, true);
voltar14.addEventListener(MouseEvent.CLICK, voltarFun14, false, 0, true);


function inicioFun14 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_14();
}
function proximoFun14 (e: MouseEvent): void {
	gotoAndStop(3, "Causas Depressão Adolescência");
	limparBotoes_14();
}
function voltarFun14 (e: MouseEvent): void {
	gotoAndStop(1, "Causas Depressão Adolescência");
	limparBotoes_14();
}

function limparBotoes_14(): void {
	inicio14.removeEventListener(MouseEvent.CLICK, inicioFun14);
	removeChild(inicio14);
	inicio14 = null;
	
	proximo14.removeEventListener(MouseEvent.CLICK, proximoFun14);
	removeChild(proximo14);
	proximo14 = null;
	
	voltar14.removeEventListener(MouseEvent.CLICK, voltarFun14);
	removeChild(voltar14);
	voltar14 = null;
}