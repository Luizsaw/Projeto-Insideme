//Acoes de botoes
stop();

var inicio21: Inicio = new Inicio();
inicio21.x = 1600;
inicio21.y = 1030;
addChild(inicio21);

var voltar21: Voltar = new Voltar();
voltar21.x = 1790;
voltar21.y = 1030;
addChild(voltar21);

inicio21.addEventListener(MouseEvent.CLICK, inicioFun21, false, 0, true);
voltar21.addEventListener(MouseEvent.CLICK, voltarFun21, false, 0, true);


function inicioFun21 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_21();
}
function voltarFun21 (e: MouseEvent): void {
	gotoAndStop(2, "Referencias");
	limparBotoes_21();
}

function limparBotoes_21(): void {
	inicio21.removeEventListener(MouseEvent.CLICK, inicioFun21);
	removeChild(inicio21);
	inicio21 = null;
	
	voltar21.removeEventListener(MouseEvent.CLICK, voltarFun21);
	removeChild(voltar21);
	voltar21 = null;
}