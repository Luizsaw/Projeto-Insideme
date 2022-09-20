//Adiciona ao palco ouvidores para entrada mouse
//Inicia tutorial
stop();
var btnTuto_1: BProximo = new BProximo();
btnTuto_1.x = 1850;
btnTuto_1.y = 1015;
addChild(btnTuto_1);
btnTuto_1.addEventListener(MouseEvent.CLICK, proximoTuto_2, false, 0, true);
var somTutorial: Tutorial = new Tutorial();
var somTutorialChn = new SoundChannel();
var snd_Transform3 = new SoundTransform();
snd_Transform3.volume = 0;
jogarSonsTutorial();
function proximoTuto_2(e: MouseEvent):void
{
	removeChild(btnTuto_1);
	btnTuto_1.removeEventListener(MouseEvent.CLICK, proximoTuto_2);
	btnTuto_1 = null;


	gotoAndStop(2, "Tutorial");
}
function pararSonsTutorial():void
{
	somTutorialChn.soundTransform = snd_Transform3;
	somTutorialChn.stop();
}
function jogarSonsTutorial():void
{
	somTutorialChn = somTutorial.play(0,int.MAX_VALUE);
}