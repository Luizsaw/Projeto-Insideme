package InsidemeClasses
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Bloco extends Sprite
	{
		public var interruptor:Boolean = false;
		public var indiceInterruptor:int = -1;
		public var interruptored:Boolean = false;
		public var inter:MovieClip = new MovieClip();
		private var largura:int = 80;
		private var altura:int = 100;
		private var larguraPersonagem:int = 60;
		private var alturaPersonagem:int = 200;
		
		
		public function Bloco() 
		{
			
			
		}
		
		public function addInterruptor(indice:int, dir:int)
		{
			indiceInterruptor = indice;
			if(dir == 1)
			{
				inter.graphics.beginFill(0, 1);
				inter.graphics.drawRect(-30, -70, 60, 20);
				inter.graphics.endFill();
			}
			addChild(inter);
			
		
		}
		public function checarObj(obj:MovieClip, place:int, padraoChao:int):void
		{
			
			if(obj.y + alturaPersonagem / 2 == y - altura / 2 && obj.onBloco == place && indiceInterruptor != -1 && !interruptored && obj.tipo == "empurrar")
			{
				removeChild(inter);
				interruptored = true;
			}
			if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+0)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2;
			}
			 if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+0)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2;
			}
			if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+1)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2;
			}
			if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+1)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2;
			}
			 if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+50)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2;
			}
			 if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+50)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2;
			}
			if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+100)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2;
			}
			 if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + (largura + 20) / 2 - 7&& Math.abs(obj.y - y) < altura / 2+100)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2;
			}
			
			if (Math.abs(obj.x - x) < largura / 2 - 20 + larguraPersonagem / 2 && obj.y < y - altura / 2 - 50 && obj.chao > y - altura / 2 - 50 && obj.onBloco != place && obj.gravidade >= 0)
			{
				obj.chao = y - altura / 2;
				obj.onBloco = place;
			}
			if (Math.abs(obj.x - x) >= largura / 2 + larguraPersonagem / 2 && obj.onBloco == place)
			{
				obj.onBloco = -1;
				obj.chao = padraoChao;
				
			}
			
			if (obj.y - alturaPersonagem / 2 < y + altura / 2 && obj.y > y && Math.abs(obj.x - x) < (largura)/ 2 + larguraPersonagem / 2)
			{
				obj.y = y + altura / 2 + alturaPersonagem / 2 + 1;
				obj.gravidade = 0;
			}
			
		
		}
		
	}// fim classe

}// fim pacote