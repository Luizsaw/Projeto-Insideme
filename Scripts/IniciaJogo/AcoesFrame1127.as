//Carega o menu principa e animacao da tela inicial 
stop();
import flash.display.StageDisplayState;
import flash.display.StageScaleMode;
import flash.events.FullScreenEvent;
import flash.system.fscommand;
import InsidemeClasses.Botoes.*;
import fl.video.VolumeBarAccImpl;
//import flash.desktop.NativeApplication;


var carregar: Loader = new Loader();
carregar.name = "myloader";
var filme: MovieClip = new MovieClip();


carregar.load(new URLRequest("Animacao Tela Inicial.swf"));
carregar.contentLoaderInfo.addEventListener(Event.COMPLETE, Carregado, false, 0, true);


function Carregado(e: Event):void
{

	filme = MovieClip(carregar.content);
	filme.play();
	jogarSons();
	addChild(btn_jogar);
	addChild(btn_sair);
	addChild(btn_extra);
	//addChild(btn_laura);
	//addChild(creditos);
}

var somTelaInicial: TelaInicial = new TelaInicial();
var somTelaInicialChn = new SoundChannel();
var snd_Transform = new SoundTransform();
snd_Transform.volume = 0;



var btn_jogar: BtnJogar = new BtnJogar();
btn_jogar.x = 300;
btn_jogar.y = 500;

/*var creditos: BtnCreditos = new BtnCreditos();
creditos.x = 400;
creditos.y = 700;*/


var btn_extra:BtnExtra = new BtnExtra();
btn_extra.x = 1600;
btn_extra.y = 900;

/*var btn_laura:Btn_laura = new Btn_laura();
btn_laura.x = 1600;
btn_laura.y = 500;*/


var btn_sair: BtnSair = new BtnSair();
btn_sair.x = 300;
btn_sair.y = 900;


addChildAt(carregar, 0);

btn_jogar.addEventListener(MouseEvent.CLICK, carregarFases, false, 0, true);
btn_extra.addEventListener(MouseEvent.CLICK, carregarExtras, false, 0, true);
btn_sair.addEventListener(MouseEvent.CLICK, sairJogo, false, 0, true);
/*creditos.addEventListener(MouseEvent.CLICK, creditosFum, false, 0, true);
btn_laura.addEventListener(MouseEvent.CLICK, lauraFum, false, 0, true);*/

function carregarFases(e: MouseEvent):void
{
	pararSons();
	removeSWF();
	gotoAndStop(1, "Intro");
	limpar();
}
function carregarExtras(e:MouseEvent):void
{
	pararSons();
	removeSWF();
	gotoAndStop(1,"Extra");
	limpar();
}

function lauraFum(e:MouseEvent):void
{
	pararSons();
	removeSWF();
	gotoAndStop(1,"Narratva");
	limpar();
}

function creditosFum(e:MouseEvent):void
{
	pararSons();
	removeSWF();
	gotoAndStop(1,"Creditos");
	limpar();
}
function sairJogo(e: MouseEvent):void
{
	fscommand("quit");
	//NativeApplication.nativeApplication.exit();
}



function limpar():void
{
	btn_jogar.removeEventListener(MouseEvent.CLICK, carregarFases);
	removeChild(btn_jogar);
	btn_jogar = null;

	btn_extra.removeEventListener(MouseEvent.CLICK, carregarExtras);
	removeChild(btn_extra);
	btn_extra = null;

	btn_sair.removeEventListener(MouseEvent.CLICK, sairJogo);
	removeChild(btn_sair);
	btn_sair = null;

	/*creditos.removeEventListener(MouseEvent.CLICK, creditosFum);
	removeChild(creditos);
	creditos = null;
	
	btn_laura.removeEventListener(MouseEvent.CLICK, lauraFum);
	removeChild(btn_laura);
	btn_laura = null;*/
}
function pararSons():void
{
	somTelaInicialChn.soundTransform = snd_Transform;
	somTelaInicialChn.stop();
}
function jogarSons():void
{
	somTelaInicialChn = somTelaInicial.play(0,int.MAX_VALUE);
}


function removeSWF():void
{
	filme.stop();
	filme = null;
	if (stage.numChildren != 0)
	{
		Loader(getChildByName("myloader")).unloadAndStop();
		removeChild(getChildByName("myloader"));
		carregar = null;
	}
}