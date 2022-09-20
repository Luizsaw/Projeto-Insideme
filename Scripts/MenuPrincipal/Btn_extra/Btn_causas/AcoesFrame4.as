//Acoes de botoes
stop();

var inicio16: Inicio = new Inicio();
inicio16.x = 1600;
inicio16.y = 1030;
addChild(inicio16);

var voltar16: Voltar = new Voltar();
voltar16.x = 1790;
voltar16.y = 1030;
addChild(voltar16);

inicio16.addEventListener(MouseEvent.CLICK, inicioFun16, false, 0, true);
voltar16.addEventListener(MouseEvent.CLICK, voltarFun16, false, 0, true);


function inicioFun16 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_16();
}
function voltarFun16 (e: MouseEvent): void {
	gotoAndStop(3, "Causas Depressão Adolescência");
	limparBotoes_16();
}

function limparBotoes_16(): void {
	inicio16.removeEventListener(MouseEvent.CLICK, inicioFun16);
	removeChild(inicio16);
	inicio16 = null;
	
	voltar16.removeEventListener(MouseEvent.CLICK, voltarFun16);
	removeChild(voltar16);
	voltar16 = null;
}