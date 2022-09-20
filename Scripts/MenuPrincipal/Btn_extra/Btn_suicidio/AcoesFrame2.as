//Acoes de Botoes
stop();

var inicio12: Inicio = new Inicio();
inicio12.x = 1600;
inicio12.y = 1030;
addChild(inicio12);

var voltar12: Voltar = new Voltar();
voltar12.x = 1790;
voltar12.y = 1030;
addChild(voltar12);

inicio12.addEventListener(MouseEvent.CLICK, inicioFun12, false, 0, true);
voltar12.addEventListener(MouseEvent.CLICK, voltarFun12, false, 0, true);


function inicioFun12 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_12();
}
function voltarFun12 (e: MouseEvent): void {
	gotoAndStop(1, "Suicidio");
	limparBotoes_12();
}

function limparBotoes_12(): void {
	inicio12.removeEventListener(MouseEvent.CLICK, inicioFun12);
	removeChild(inicio12);
	inicio12 = null;
	
	voltar12.removeEventListener(MouseEvent.CLICK, voltarFun12);
	removeChild(voltar12);
	voltar12 = null;
}