//Carrega na tela a introducao onde conta uma breve historia
//gera animacao escrevendo letra a letra puxando um arquivo txt da pasta raiz 
//chama o tela de tutorial
stop();
var myText:String;
var counter:Number = 0;
var somIntro: Intro = new Intro();
var somIntroChn = new SoundChannel();
var snd_Transform2 = new SoundTransform();
snd_Transform2.volume = 0;
var format: TextFormat = new TextFormat();
format.size = 50;
format.font = "Arial";
format.bold = true;
format.color = 0xFFFFFF;
var textField: TextField = new TextField();
textField.width = 1800;
textField.height = 1080;
textField.selectable = false;
textField.wordWrap = true;
textField.defaultTextFormat = format;
textField.x = textField.y = 100;
addChild(textField);
jogarSonsIntro();
var textLoader:URLLoader = new URLLoader(new URLRequest("texto 1.txt"));
textLoader.addEventListener(Event.COMPLETE, function (e: Event) {
initText(e.target.data);
});
function pararSonsIntro():void
{
	somIntroChn.soundTransform = snd_Transform2;
	somIntroChn.stop();
}
function jogarSonsIntro():void
{
	somIntroChn = somIntro.play(0,int.MAX_VALUE);
}
function initText(string: String):void
{
	myText = string;
	addEventListener(Event.ENTER_FRAME, writeText, false, 0, true);
}
function writeText(e: Event):void
{
	if (counter <= myText.length)
	{
		textField.text = myText.substr(0,counter);
		counter +=  0.2;
	}
}
var btnIntro: BProximo = new BProximo();
btnIntro.x = 1850;
btnIntro.y = 1015;
addChild(btnIntro);
btnIntro.addEventListener(MouseEvent.CLICK, proximoTuto_1, false, 0, true);


function proximoTuto_1(e: MouseEvent):void
{
	removeEventListener(Event.ENTER_FRAME, writeText);
	removeChild(textField);
	textField = null;
	removeChild(btnIntro);
	btnIntro.removeEventListener(MouseEvent.CLICK, proximoTuto_1);
	btnIntro = null;
	pararSonsIntro();
	gotoAndStop(1, "Tutorial");
}