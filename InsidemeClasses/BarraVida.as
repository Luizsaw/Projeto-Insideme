package InsidemeClasses
{
	import flash.display.MovieClip;
	import InsidemeClasses.CorBarra;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class BarraVida extends MovieClip 
	{
		public var corBar: CorBarra = new CorBarra();
		public function BarraVida() 
		{
			corBar.x = -250;
			this.addChildAt(corBar,0);
		}
		
	}

}