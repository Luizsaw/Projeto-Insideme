package InsidemeClasses.Inimigo
{
	import flash.display.MovieClip;
	import flash.utils.*;
	import flash.events.*;
	import InsidemeClasses.*;
	import flash.geom.Point;
	import flash.geom.ColorTransform;
	import flash.filters.*;

	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Inimigo_lvl5 extends MovieClip
	{
		public var dano:Number = 10;
		public var danoMax:Number = 100;
		private var larguraPersonagem:int = 60;
		private var alturaPersonagem:int = 200;
		private var larguraInimigo:int = 100;
		private var alturaInimigo:int = 100;
		private var cont:int = 0;
		private var cont2:int = 0;
		private var cont3:int = 0;
		private var cont4:int = 0;
		private var atk:Boolean = false;
		public var removerInimigo:Boolean = false;
		private var atkInimigo:AtkInimigo_lvl5 = new AtkInimigo_lvl5();
		private var velocidadeMax:Number = 5;
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
		private var tempo:Timer = new Timer(100,1);
		public var onBloco:int = -1;
		private var direcao:int = 0;

		public function Inimigo_lvl5()
		{
			addChild(atkInimigo);
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
		public function checarObj(obj:MovieClip, obj2:MovieClip, place, padraoChao:int, danoOn:Boolean, ataqueLaura:Boolean, danoMaxOn):void
		{
			dx = x - localX;
			dy = y - localY;

			var posX:int = obj.x - x;
			var posY:int = obj.y - y;
			var angulo:Number = 180 / Math.PI;
			if (cont3 == 0)
			{
				if (danoOn)
				{
					atualPosicao();
				}

				if (atk && cont2 == 0)
				{
					atkInimigo.rotation = Math.atan2(posY,posX) * angulo;
					if (Math.atan2(posY,posX) * angulo > 80)
					{
						this.gotoAndPlay(41);
						direcao = 2;
					}
					else if (Math.atan2(posY,posX) * angulo < -80)
					{
						this.gotoAndPlay(41);
						direcao = 2;
					}
					else
					{
						this.gotoAndPlay(1);
						direcao = 1;
					}

					atkInimigo.gotoAndPlay(2);
					cont2 = 1;
				}
				else
				{
					if (atkInimigo.currentFrame == 35)
					{
						atkInimigo.gotoAndStop(1);
						cont2 = 0;
					}
				}



				if (Math.abs(obj.x - x) < larguraPersonagem / 2 + 1200 / 2 && Math.abs(obj.y - y) < larguraPersonagem / 2 + 1200 / 2)
				{
					atk = true;
				}
				else
				{
					atk = false;
				}
				if (ataqueLaura)
				{
					if (Math.abs(obj2.x - x) < larguraPersonagem / 2 + 125 && Math.abs(obj2.y - y) < larguraPersonagem / 2 + 125)
					{
						this.stop();
						this.gotoAndPlay(81);
						cont3 = 1;
					}
				}
			}
			if (danoOn)
			{
				if(!ataqueLaura)
				{
				if (atkInimigo.hitTestObject(obj))
				{
					if (danoMaxOn == false)
					{
						obj.vida -=  dano;
						atkInimigo.gotoAndStop(1);
						obj.particulas = true;
						cont2 = 0;
					}
					else if (danoMaxOn)
					{
						obj.vida -=  danoMax;
						atkInimigo.gotoAndStop(1);
						obj.particulas = true;
						cont2 = 0;
					}
				}
				else
				{
					obj.particulas = false;
				}
				}
				else if(ataqueLaura)
				{
					if (atkInimigo.hitTestObject(obj2))
				{
					if (danoMaxOn == false)
					{
						atkInimigo.gotoAndStop(1);
						obj.particulas = false;
						cont2 = 0;
					}
					else if (danoMaxOn)
					{
						atkInimigo.gotoAndStop(1);
						obj.particulas = false;
						cont2 = 0;
					}
				}
				}
			}

			if (this.currentFrame == 101)
			{
				this.stop();
				removerInimigo = true;
			}
			else
			{
				removerInimigo = false;
			}
		}
	}// fim clase

}// fim pacote