package InsidemeClasses
{
	import flash.display.MovieClip;
	import InsidemeClasses.*;;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class BarraTempoEfeito extends MovieClip 
	{
		public var corBarEf: CorBarraEfeito = new CorBarraEfeito();
		public function BarraTempoEfeito() 
		{
			corBarEf.x = -90;
			corBarEf.scaleX = 0;
			this.addChildAt(corBarEf,0);
		}
		
	}

}