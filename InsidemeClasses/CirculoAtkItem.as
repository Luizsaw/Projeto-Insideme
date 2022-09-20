package InsidemeClasses
{
	import flash.display.MovieClip;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */

	public class CirculoAtkItem extends MovieClip
	{
		var largura:int = 100;
		var altura:int = 200;
		
		private var velocidadeMax:Number = 25;
		private var velMovimento:Number = 0;
		private var aceleracao:Number = .05;
		private var velRotacaoMax:Number = 10;
		public var localX:int;
		public var localY:int;
		private var minX:Number = 0;
		private var minY:Number = 0;
		private var maxX:Number = 7964.85;
		private var maxY:Number = 3807.45;
		public var localPoints:Array;
		private var constPoints:int = 0;
		private var trocarDir:Number = 5;
		private var distancia:Number;
		public var dx:Number = 0;
		public var dy:Number = 0;
		public var vx:Number = 0;
		public var vy:Number = 0;
		public var xIni:int = 0;
		public var yIni:int = 0;
		private var rotVerdadeira:Number = 0;
		private var direcao:int = 0;

		
		public function CirculoAtkItem()
		{
			
		}
		public function addPontos(pontoX1:int, pontoY1:int,pontoX2:int, pontoY2:int,pontoX3:int, pontoY3:int,pontoX4:int, pontoY4:int, pontoX5:int, pontoY5:int,pontoX6:int, pontoY6:int):void
		{
			localPoints = [];

			localPoints.push(new Point(pontoX1, pontoY1));
			localPoints.push(new Point(pontoX2, pontoY2));
			localPoints.push(new Point(pontoX3, pontoY3));
			localPoints.push(new Point(pontoX4, pontoY4));
			localPoints.push(new Point(pontoX5, pontoY5));
			localPoints.push(new Point(pontoX6, pontoY6));

			getNextDestination();
			
		}


		private function atualPosicao():void
		{
			if (getDistance(dx, dy) < trocarDir)
			{
				getNextDestination();
			}
			distancia = getDistance(localX - x, localY - y);
			if (distancia >= 50)
			{
				velMovimento +=  aceleracao;
				if (velMovimento > velocidadeMax)
				{
					velMovimento = velocidadeMax;
				}
			}
			else if (distancia < 30)
			{
				velMovimento *=  .90;
			}
			vx = (localX - x) / distancia * velMovimento;
			vy = (localY - y) / distancia * velMovimento;
			x +=  vx;
			y +=  vy;
			
			
			if(vx > 0)
			{
				this.scaleX = 1;
			}
			if(vx < 0)
			{
				this.scaleX = -1;
			}
		}
		private function getNextDestination():void
		{
			localX = localPoints[constPoints].x;
			localY = localPoints[constPoints].y;

			constPoints++;

			if (constPoints == localPoints.length)
			{
				constPoints = 0;
			}
		}

		public function getDistance(delta_x:Number, delta_y:Number):Number
		{
			return Math.sqrt((delta_x*delta_x)+(delta_y*delta_y));
		}

		public function getRadians(delta_x:Number, delta_y:Number):Number
		{
			var r:Number = Math.atan2(delta_y,delta_x);

			if (delta_y < 0)
			{
				r +=  (2 * Math.PI);
			}
			return r;
		}

		public function getDegrees(radians:Number):Number
		{
			return Math.floor(radians/(Math.PI/180));
		}
		
		public function checarObj(obj:MovieClip):Boolean
		{
			dx = x - localX;
			dy = y - localY;
			

			var posX:int = obj.x - x;
			var posY:int = obj.y - y;
			
			atualPosicao();
			
			if (Math.abs(obj.x - x) < largura - 50 && Math.abs(obj.y - y) < altura - 100)
				return true;
			return false;
		}
	}

}