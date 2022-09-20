//Carrega animacao do logo
stop();
import flash.display.StageDisplayState;
import flash.display.StageScaleMode;
import flash.events.FullScreenEvent;
import flash.system.fscommand;


var carregar1: Loader = new Loader();
carregar1.name = "myloader_1";
var filme1: MovieClip = new MovieClip();

addChild(carregar1);
carregar1.load(new URLRequest("Animacao logo.swf"));
carregar1.contentLoaderInfo.addEventListener(Event.COMPLETE, Carregado1, false, 0, true);


function checarUltimoFrame1(e: Event):void
{

	if (filme1.currentFrame == filme1.totalFrames)
	{
		removeSWF1();
		gotoAndStop(1127,"Tela Inicial");

	}
}


function Carregado1(e: Event):void
{
	filme1 = MovieClip(carregar1.content);
	filme1.width = 1920;
	filme1.height = 1080;
	filme1.play();
	filme1.addEventListener(Event.ENTER_FRAME, checarUltimoFrame1);

}

function removeSWF1():void
{
	filme1.stop();
	filme1 = null;
	if (stage.numChildren != 0)
	{
		Loader(getChildByName("myloader_1")).unloadAndStop();
		removeChild(getChildByName("myloader_1"));
		carregar1 = null;
	}
}