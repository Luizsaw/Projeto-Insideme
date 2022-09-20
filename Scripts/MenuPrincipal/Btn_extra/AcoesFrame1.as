//acoes do Btn Extra
stop();

var introducao: btn_introducao = new btn_introducao();
introducao.x = 960;
introducao.y = 80;
addChild(introducao);

var adole: adolescencia = new adolescencia();
adole.x = 960;
adole.y = 130;
addChild(adole);

var depre: depressao = new depressao();
depre.x = 960;
depre.y = 180;
addChild(depre);

var cau: causas = new causas();
cau.x = 960;
cau.y = 230;
addChild(cau);

var sin: sintomas = new sintomas();
sin.x = 960;
sin.y = 280;
addChild(sin);

var dia: diagnostico = new diagnostico();
dia.x = 960;
dia.y = 330;
addChild(dia);

var tra: tratamento = new tratamento();
tra.x = 960;
tra.y = 380;
addChild(tra);

var deprea: depressaoA = new depressaoA();
deprea.x = 960;
deprea.y = 430;
addChild(deprea);

var sina: sintomasA = new sintomasA();
sina.x = 960;
sina.y = 480;
addChild(sina);

var sui: suicidio = new suicidio();
sui.x = 960;
sui.y = 530;
addChild(sui);

var caua: causasA = new causasA();
caua.x = 960;
caua.y = 580;
addChild(caua);

var trata: tratamentoA = new tratamentoA();
trata.x = 960;
trata.y = 630;
addChild(trata);

var ref: referencias = new referencias();
ref.x = 960;
ref.y = 680;
addChild(ref);

var vol: Voltar = new Voltar();
vol.x = 960;
vol.y = 730;
addChild(vol);

introducao.addEventListener(MouseEvent.CLICK, introducaoFun, false, 0, true);
adole.addEventListener(MouseEvent.CLICK, adoleFun, false, 0, true);
depre.addEventListener(MouseEvent.CLICK, depreFun, false, 0, true);
cau.addEventListener(MouseEvent.CLICK, cauFun, false, 0, true);
sin.addEventListener(MouseEvent.CLICK, sinFun, false, 0, true);
dia.addEventListener(MouseEvent.CLICK, diaFun, false, 0, true);
tra.addEventListener(MouseEvent.CLICK, traFun, false, 0, true);
deprea.addEventListener(MouseEvent.CLICK, depreaFun, false, 0, true);
sina.addEventListener(MouseEvent.CLICK, sinaFun, false, 0, true);
sui.addEventListener(MouseEvent.CLICK, suiFun, false, 0, true);
caua.addEventListener(MouseEvent.CLICK, cauaFun, false, 0, true);
trata.addEventListener(MouseEvent.CLICK, trataFun, false, 0, true);
ref.addEventListener(MouseEvent.CLICK, refFun, false, 0, true);
vol.addEventListener(MouseEvent.CLICK, volFun, false, 0, true);


function introducaoFun (e: MouseEvent): void {
	gotoAndStop(1, "Introdução");
	limparBotoes();
}
function adoleFun (e: MouseEvent): void {
	gotoAndStop(1, "Adolescência");
	limparBotoes();
}
function depreFun (e: MouseEvent): void {
	gotoAndStop(1, "Depressão");
	limparBotoes();
}
function cauFun (e: MouseEvent): void {
	gotoAndStop(1, "Causas Depressão");
	limparBotoes();
}
function sinFun (e: MouseEvent): void {
	gotoAndStop(1, "Sintomas Depressão");
	limparBotoes();
}
function diaFun (e: MouseEvent): void {
	gotoAndStop(1, "Diagnóstico Depressão");
	limparBotoes();
}
function traFun (e: MouseEvent): void {
	gotoAndStop(1, "Tratamento Depressão");
	limparBotoes();
}
function depreaFun (e: MouseEvent): void {
	gotoAndStop(1, "Depresão Adolescência");
	limparBotoes();
}
function sinaFun (e: MouseEvent): void {
	gotoAndStop(1, "Sintomas Depressão Adolescência");
	limparBotoes();
}

function suiFun (e: MouseEvent): void {
	gotoAndStop(1, "Suicidio");
	limparBotoes();
}

function cauaFun (e: MouseEvent): void {
	gotoAndStop(1, "Causas Depressão Adolescência");
	limparBotoes();
}

function trataFun (e: MouseEvent): void {
	gotoAndStop(1, "Tratamento Depressão Adolescência");
	limparBotoes();
}

function refFun (e: MouseEvent): void {
	gotoAndStop(1, "Referencias");
	limparBotoes();
}
function volFun (e: MouseEvent): void {
	gotoAndStop(1127, "Tela Inicial");
	limparBotoes();
}

function limparBotoes(): void {
	introducao.removeEventListener(MouseEvent.CLICK, introducaoFun);
	removeChild(introducao);
	introducao = null;
	
	adole.removeEventListener(MouseEvent.CLICK, adoleFun);
	removeChild(adole);
	adole = null;
	
	depre.removeEventListener(MouseEvent.CLICK, depreFun);
	removeChild(depre);
	depre = null;
	
	cau.removeEventListener(MouseEvent.CLICK, cauFun);
	removeChild(cau);
	cau = null;
	
	sin.removeEventListener(MouseEvent.CLICK, sinFun);
	removeChild(sin);
	sin = null;
	
	dia.removeEventListener(MouseEvent.CLICK, diaFun);
	removeChild(dia);
	dia = null;
	
	tra.removeEventListener(MouseEvent.CLICK, traFun);
	removeChild(tra);
	tra = null;
	
	deprea.removeEventListener(MouseEvent.CLICK, depreaFun);
	removeChild(deprea);
	deprea = null;
	
	sina.removeEventListener(MouseEvent.CLICK, sinaFun);
	removeChild(sina);
	sina = null;
	
	sui.removeEventListener(MouseEvent.CLICK, suiFun);
	removeChild(sui);
	sui = null;
	
	caua.removeEventListener(MouseEvent.CLICK, cauaFun);
	removeChild(caua);
	caua = null;
	
	trata.removeEventListener(MouseEvent.CLICK, trataFun);
	removeChild(trata);
	trata = null;
	
	ref.removeEventListener(MouseEvent.CLICK, refFun);
	removeChild(ref);
	ref = null;
	
	vol.removeEventListener(MouseEvent.CLICK, volFun);
	removeChild(vol);
	vol = null;
}