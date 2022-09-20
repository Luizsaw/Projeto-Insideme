//Acoes de botoes
stop();

var inicio18: Inicio = new Inicio();
inicio18.x = 1600;
inicio18.y = 1030;
addChild(inicio18);

var voltar18: Voltar = new Voltar();
voltar18.x = 1790;
voltar18.y = 1030;
addChild(voltar18);

inicio18.addEventListener(MouseEvent.CLICK, inicioFun18, false, 0, true);
voltar18.addEventListener(MouseEvent.CLICK, voltarFun18, false, 0, true);


function inicioFun18 (e: MouseEvent): void {
	gotoAndStop(1, "Extra");
	limparBotoes_18();
}
function voltarFun18 (e: MouseEvent): void {
	gotoAndStop(1, "Tratamento Depressão Adolescência");
	limparBotoes_18();
}

function limparBotoes_18(): void {
	inicio18.removeEventListener(MouseEvent.CLICK, inicioFun18);
	removeChild(inicio18);
	inicio18 = null;
	
	voltar18.removeEventListener(MouseEvent.CLICK, voltarFun18);
	removeChild(voltar18);
	voltar18 = null;
}