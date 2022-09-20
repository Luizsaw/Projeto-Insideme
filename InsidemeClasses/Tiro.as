package InsidemeClasses
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Tiro extends MovieClip 
	{
		private var xVelocidade:Number;
		private var yVelocidade:Number;
		
		public function Tiro(xPos:int, yPos:int, xVel:Number, yVel:Number) 
		{
			this.x = xPos;
			this.y = yPos;
			this.xVelocidade = xVel;
			this.yVelocidade = yVel;
			
			this.graphics.beginFill(0x000000, 1);
			this.graphics.drawCircle(0, 0, 5);
			this.graphics.endFill()
			
		}
		
		public function checar():void
		{
			x += xVelocidade;
			y += yVelocidade;
		}
		
	}

}