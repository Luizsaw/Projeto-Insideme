package InsidemeClasses
{
	import flash.display.MovieClip;
	
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Personagem extends MovieClip 
	{
		public var gravidade:int =0;
		public var chao:int = 1990;
		public var onBloco: int = -1;
		public var vidaMax: int = 250;
		public var vida:int = vidaMax;
		public var danoPorcentagem:Number = vida / vidaMax;
		public var naEscada:int = -1;
		public var tipo:String = "Jogador";
		public var velocidadeY:Number = 1;
		public var velocidadeX:int = 7;
		public var pular:Boolean = false;
		public var cair:Boolean = false;
		private var larguraPersonagem:int = 60;
		private var alturaPersonagem:int = 200;
		public var particulas:Boolean = false;
		public var cameraNuvem:Boolean = false;
		public var cameraControle:Boolean = false;
		public var agarrar:int = 0;
		public var puxarD:Boolean = false;
		public var puxarE:Boolean = false;
		public var controleBloco:int = 0;
		public var controleAgarrar:int = 0;
		public var deslCamera:Boolean = false;
		
		
		public function Personagem() 
		{
			
		}
		
		public function ajustar():void
		{
			this.y += gravidade;
			if (this.y + alturaPersonagem / 2 < chao)
			{
				gravidade++;
				pular = false;
				
			}
			else
			{
				gravidade = 0;
				this.y = chao - alturaPersonagem / 2;
				pular = true;
			}
			/*
			if (this.x - this.width / 2 < 0)
			this.x = width / 2;
			if (this.x + this.width / 2 > 800)
			this.x = 800 - this.width / 2;*/
		}
		
	}// fim classe

}// fim pacote