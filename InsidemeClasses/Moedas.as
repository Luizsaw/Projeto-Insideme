package InsidemeClasses
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Luiz Carlos Machado
	 */
	public class Moedas extends MovieClip 
	{
		var largura:int = 100;
		var altura:int = 200;
		
		public function Moedas() 
		{
			
		}
		public function checarObj(obj:MovieClip):Boolean
		{
			if (Math.abs(obj.x - x) < largura && Math.abs(obj.y - y) < altura + 50)
				return true;
			return false;
		}
		
	}// fim classe

}// fim pacote