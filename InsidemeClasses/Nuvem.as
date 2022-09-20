package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Nuvem extends MovieClip
	{
		public var xVel:int = 0;
		public var yVel:int = 0;
		public var xDist:int = 0;
		public var yDist:int = 0;
		public var xIni:int = 0;
		public var yIni:int = 0;
		public var mover:Boolean = false;
		private var largura:int = 80;
		private var altura:int = 100;
		private var larguraPersonagem:int = 60;
		private var alturaPersonagem:int = 200;
		public var inimigoPular:Boolean = false;

		public function Nuvem()
		{
			
		}
		public function ajustar(obj:MovieClip, place:int)
		{
			
			if(obj.onBloco == place && obj.y + alturaPersonagem / 2 == y - altura / 2)
			{
				obj.x += xVel;
				obj.y += yVel;
				obj.deslCamera = true;
			}
			else
			{
				obj.deslCamera = false;
			}
			
			x += xVel;
			y += yVel;
			if(obj.onBloco == place)
			{
				obj.chao = y - altura / 2;
			}
			
			
			if(Math.abs(x - xIni ) > xDist)
				xVel *= -1;
			if(Math.abs(y - yIni ) > yDist)
				yVel *= -1;
			
		}
		public function checarObj(obj:MovieClip, place, padraoChao:int):void
		{
			
			if (Math.abs(obj.x - x) < largura / 2 - 20 + larguraPersonagem / 2 && obj.y < y - altura / 2 - 50 && obj.chao > y - altura / 2 - 50 && obj.onBloco != place && obj.gravidade >= 0)
			{
				obj.chao = y - altura / 2;
				obj.onBloco = place;
			}
			

			if (Math.abs(obj.x - x) >= largura/ 2 + larguraPersonagem / 2 && obj.onBloco == place)
			{
				obj.onBloco = -1;
				obj.chao = padraoChao;
			}
			
		}

	}

}