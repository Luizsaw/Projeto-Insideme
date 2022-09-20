//Acoes de botoes
stop();

var inicio2: Inicio = new Inicio();
inicio2.x = 1600;
inicio2.y = 1030;
addChild(inicio2);

var voltar2: Voltar = new Voltar();
voltar2.x = 1790;
voltar2.y = 1030;
addChild(voltar2);

inicio2.addEventListener(MouseEvent.CLICK, inicioFun2, false, 0, true);
voltar2.addEventListener(MouseEvent.CLICK, voltarFun2, false, 0, true);


function inicioFun2 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_2();
}
function voltarFun2 (e: MouseEvent): void {
	gotoAndStop(2, "Introdução");
	limparBotoes_2();
}

function limparBotoes_2(): void {
	inicio2.removeEventListener(MouseEvent.CLICK, inicioFun2);
	removeChild(inicio2);
	inicio2 = null;
	
	voltar2.removeEventListener(MouseEvent.CLICK, voltarFun2);
	removeChild(voltar2);
	voltar2 = null;
}