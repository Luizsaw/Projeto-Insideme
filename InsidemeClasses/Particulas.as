package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Particulas extends MovieClip
	{	
		public var xVelocidade:int = 0;
		public var yVelocidade:int = 0;
		public var rVelocidade:int = 0;
		public var temp:int = 0;
		public var tempoMax:int = 10;
		public var gravidade:int = 0;
		
		public function Particulas(tamanho:int, gravidade:int, cor:uint,tempo:int)
		{
			this.graphics.beginFill(cor, 1);
			this.graphics.drawRect(x - tamanho / 2, y - tamanho / 2, tamanho, tamanho)
			this.graphics.endFill();
			this.gravidade = gravidade;
			tempoMax = tempo
		}
		
		public function atualizar()
		{
			x += xVelocidade;
			y += yVelocidade;
			rotation += rVelocidade;
			temp++;
			alpha -= 1/tempoMax;
			yVelocidade += gravidade;
			if(xVelocidade > 0)
				xVelocidade -=.5;
			else
				xVelocidade +=.5;
			
			
		}

	}

}