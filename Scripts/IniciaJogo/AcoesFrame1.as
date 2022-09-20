//Adiciona para o palco ouvidores para entrada de teclado e inicia o jogo em tela cheia
stage.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
stage.addEventListener(KeyboardEvent.KEY_DOWN, escOverride);
function escOverride(e:KeyboardEvent):void
{
	if (e.keyCode == 27)
	{
		e.preventDefault();
	}
}