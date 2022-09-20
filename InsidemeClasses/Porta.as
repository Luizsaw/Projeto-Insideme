package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */

	public class Porta extends MovieClip
	{
		//public var local:int = 0;
		//public var desbloquear:Boolean = false;
		
		public function Porta()
		{
		
		}
		public function checarObj(obj:MovieClip):Boolean
		{
			if (Math.abs(obj.x - x) < width && Math.abs(obj.y - y) < height + 50)
			{
				return true;
			}
			return false;
		}

	}

}