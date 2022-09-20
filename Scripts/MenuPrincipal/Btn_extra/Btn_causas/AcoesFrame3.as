//Acoes de botoes
stop();

var inicio15: Inicio = new Inicio();
inicio15.x = 1420;
inicio15.y = 1030;
addChild(inicio15);

var voltar15: Voltar = new Voltar();
voltar15.x = 1600;
voltar15.y = 1030;
addChild(voltar15);

var proximo15: Proximo = new Proximo();
proximo15.x = 1800,6;
proximo15.y = 1030;
addChild(proximo15);

inicio15.addEventListener(MouseEvent.CLICK, inicioFun15, false, 0, true);
proximo15.addEventListener(MouseEvent.CLICK, proximoFun15, false, 0, true);
voltar15.addEventListener(MouseEvent.CLICK, voltarFun15, false, 0, true);


function inicioFun15 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_15();
}
function proximoFun15 (e: MouseEvent): void {
	gotoAndStop(4, "Causas Depressão Adolescência");
	limparBotoes_15();
}
function voltarFun15 (e: MouseEvent): void {
	gotoAndStop(2, "Causas Depressão Adolescência");
	limparBotoes_15();
}

function limparBotoes_15(): void {
	inicio15.removeEventListener(MouseEvent.CLICK, inicioFun15);
	removeChild(inicio15);
	inicio15 = null;
	
	proximo15.removeEventListener(MouseEvent.CLICK, proximoFun15);
	removeChild(proximo15);
	proximo15 = null;
	
	voltar15.removeEventListener(MouseEvent.CLICK, voltarFun15);
	removeChild(voltar15);
	voltar15 = null;
}