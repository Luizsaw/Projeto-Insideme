package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */

	public class empurrarObj extends MovieClip
	{
		private var largura:int = 60;
		private var altura:int = 200;
		private var larguraPersonagem:int = 60;
		private var alturaPersonagem:int = 200;
		public var gravidade:int = 0;
		public var chao:int = 1990;
		public var tipo:String = "empurrar";
		public var onBloco:int = -1;
		public var controleBloco:int = 0;
		private var colisaoDireita:Boolean = false;
		private var colisaoEsquerda:Boolean = false;
		private var cont:int = 0;
		private var cont2:int = 0;

		public function empurrarObj()
		{

		}
		public function checarObj(obj:MovieClip, place:int, padraoChao:int, qPress:Boolean, direitaPress:Boolean, esquerdaPress:Boolean, wPress:Boolean):void
		{
			this.y +=  gravidade;
			if (this.y + alturaPersonagem / 2 < chao)
			{
				gravidade++;
				qPress = false;

			}
			else
			{

				gravidade = 0;
				this.y = chao - alturaPersonagem / 2;
			}

			if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7 && Math.abs(obj.y - y) < altura / 2 + 0)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2 - 1;
				colisaoDireita = true;
				colisaoEsquerda = false;
			}
			else if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+0)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2 + 1;
				colisaoEsquerda = true;
				colisaoDireita = false;
			}
			else if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+1)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2 - 1;
				colisaoDireita = true;
				colisaoEsquerda = false;
			}
			else if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+1)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2 + 1;
				colisaoEsquerda = true;
				colisaoDireita = false;
			}
			else if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+50)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2 - 1;
				colisaoDireita = true;
				colisaoEsquerda = false;
			}
			else if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+50)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2 + 1;
				colisaoEsquerda = true;
				colisaoDireita = false;
			}
			else if (obj.x + larguraPersonagem / 2 > x - largura / 2 && obj.x < x - largura / 2 + 7&& Math.abs(obj.y - y) < altura / 2+100)
			{
				obj.x = x - largura / 2 - larguraPersonagem / 2 - 1;
				colisaoDireita = true;
				colisaoEsquerda = false;
			}
			else if (obj.x - larguraPersonagem / 2 < x + largura / 2 && obj.x > x + largura / 2 - 7&& Math.abs(obj.y - y) < altura / 2+100)
			{
				obj.x = x + largura / 2 + larguraPersonagem / 2 + 1;
				colisaoEsquerda = true;
				colisaoDireita = false;
			}

			if (Math.abs(obj.x - x) < largura / 2 - 20 + larguraPersonagem / 2 && obj.y < y - altura / 2 - 50 && obj.chao > y - altura / 2 - 50 && obj.onBloco != place && obj.gravidade >= 0)
			{
				obj.chao = y - altura / 2;
				obj.onBloco = place;
				cont = 1;
			}
			if (Math.abs(obj.x - x) >= largura / 2 + larguraPersonagem / 2 && obj.onBloco == place)
			{
				obj.onBloco = -1;
				obj.chao = padraoChao;
				cont = 0;

			}

			if (obj.y - alturaPersonagem / 2 < y + altura / 2 && obj.y > y && Math.abs(obj.x - x) < largura / 2 + larguraPersonagem / 2 - 10)
			{
				obj.y = y + altura / 2 + alturaPersonagem / 2 + 1;
				obj.gravidade = 0;
				cont = 1;
			}
			if (cont2 == 0)
			{
				if (colisaoDireita)
				{
					if (direitaPress)
					{
						obj.controleBloco = 1;
					}
					if (esquerdaPress || cont == 1)
					{
						obj.controleBloco = 0;
						colisaoDireita = false;
						colisaoEsquerda = false;
					}
				}
				else if (colisaoEsquerda)
				{
					if (esquerdaPress)
					{
						obj.controleBloco = 1;
					}
					if (direitaPress || cont == 1)
					{
						obj.controleBloco = 0;
						colisaoDireita = false;
						colisaoEsquerda = false;
					}
				}
			}

			if ((obj.x == x + largura / 2 + larguraPersonagem / 2 +1) && qPress && obj.agarrar == 0)
			{
				cont2 = 1;
				obj.agarrar = place;
				obj.puxarD = false;
				obj.puxarE = true;
				obj.controleAgarrar = 1;
				obj.controleBloco = 0;
			}
			if ((obj.x == x - largura / 2 - larguraPersonagem / 2 -1) && qPress && obj.agarrar == 0)
			{
				cont2 = 1;
				obj.agarrar = place;
				obj.puxarD = true;
				obj.puxarE = false;
				obj.controleAgarrar = 1;
				obj.controleBloco = 0;

			}

			if (obj.agarrar == place && ! qPress)
			{
				cont2 = 0;
				obj.agarrar = 0;
				obj.controleAgarrar = 0;
				obj.puxarD = false;
				obj.puxarE = false;
			}

		}

	}

}