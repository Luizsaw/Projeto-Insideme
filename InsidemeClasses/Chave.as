package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */

	public class Chave extends MovieClip
	{
		public var vis:Boolean = false;
		public function Chave()
		{
			this.graphics.beginFill(0xFFDD00, 1);
			this.graphics.drawCircle(x, y, 15);
			this.graphics.endFill();
		}

		public function checarObj(obj:MovieClip, inimigos:Array):int
		{
			
			if (Math.abs(obj.x - x) < width && Math.abs(obj.y - y) < height && vis)
			{
				return 2;
			}
			if(inimigos.length == 0)
				return 1;
			
			return 0;
		}

	}

}