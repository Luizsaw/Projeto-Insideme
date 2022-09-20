//Sistema onde conclui o jogo
import InsidemeClasses.VariaveisLocais;

stop();
var myText2: String;
var counter2: Number = 0;


var format2: TextFormat = new TextFormat();
format2.size = 50;
format2.font = "Arial";
format2.bold = true;
format2.color = 0xFFFFFF;

var textField2: TextField = new TextField();
textField2.width = 1800;
textField2.height = 1080;
textField2.selectable = false;
textField2.wordWrap = true;
textField2.defaultTextFormat = format2;
textField2.x = textField2.y = 100;
addChild(textField2);

var textLoader2: URLLoader = new URLLoader(new URLRequest("texto 2.txt"));
textLoader2.addEventListener(Event.COMPLETE, function (e: Event) {
	initText2(e.target.data);
});

function initText2(string: String): void {
	myText2 = string;
	addEventListener(Event.ENTER_FRAME, writeText2, false, 0, true);
}

function writeText2(e: Event): void {
	if (counter2 <= myText2.length) {
		textField2.text = myText2.substr(0, counter2);
		counter2 += 0.2;
	}
}

var btnFinal: BProximo = new BProximo();

btnFinal.x = 1850;
btnFinal.y = 1015;
addChild(btnFinal);
btnFinal.addEventListener(MouseEvent.CLICK, proximoFinal, false, 0, true);


function proximoFinal(e: MouseEvent): void {
	removeEventListener(Event.ENTER_FRAME, writeText2);
	removeChild(textField2);
	textField2 = null;

	removeChild(btnFinal);
	btnFinal.removeEventListener(MouseEvent.CLICK, proximoFinal);
	btnFinal = null;
	gotoAndPlay(1, "Tela Inicial");
	
}