package InsidemeClasses
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Carregar extends MovieClip
	{
		public var topo:Boolean = false;

		public function Carregar(topo:Boolean)
		{
			this.topo = topo;
			this.graphics.beginFill(0x442211, 1);
			this.graphics.drawRect(x - 25, y - 25, 50, 50);
			this.graphics.endFill();
		}
		
		public function checarObj(obj:MovieClip, lugar:int, escalar:Boolean):void
		{
			if(Math.abs(obj.x - x) < width / 2 && Math.abs(obj.y - y) < height / 2)
				obj.naEscada = lugar;
			if(obj.naEscada == lugar && (Math.abs(obj.x - x) >= width / 2 + obj.width / 2 || Math.abs(obj.y - y) > height + obj.height / 2 ))
				obj.naEscada = -1;
			if(obj.y < y - height / 2 && topo && obj.naEscada == lugar && escalar)
				obj.y = y - height / 2;
			
		}

	}

}