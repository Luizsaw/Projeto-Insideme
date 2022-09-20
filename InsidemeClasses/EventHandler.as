package InsidemeClasses
{
	import flash.events.EventDispatcher;

	public class EventHandler extends EventDispatcher
	{
		private var dispatcher:*;
		private var eventList:Array;
		
		public function EventHandler(dispatcher:*)
		{
			this.eventList = [];
			this.dispatcher = dispatcher;
		}
		
		override public function addEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0, useWeakReference:Boolean=true):void
		{
			if (!dispatcher.hasEventListener(type))
			{
				eventList.push({type:type, listener:listener, useCapture:useCapture});
				dispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
			}
			else
			{
				throw new Error("EventHandlerError: " + type + " already exists for " + dispatcher);
			}
		}
		
		override public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void
		{
			var obj:Object;
			var i:uint = 0;
			while(i<eventList.length)
			{
				obj = eventList[i];
				if (obj.type==type && obj.listener==listener && obj.useCapture==useCapture)
				{
					dispatcher.removeEventListener(type, listener, useCapture);
					eventList.splice(i, 1);
					break;
				}
				++i;
			}
			obj = null;
		}
		
		public function removeAllEventListeners():void
		{
			var obj:Object;
			var i:uint = 0;
			while(i<eventList.length)
			{
				obj = eventList[i];
				dispatcher.removeEventListener(obj.type, obj.listener, obj.useCapture);
				++i;
			}
			obj = null;
			eventList = [];
		}
		
		public function getAllEventListeners():Array
		{
			var i:uint = 0;
			var arr:Array = [];
			while(i<eventList.length)
			{
				arr.push(eventList[i].type);
				++i;
			}
			return arr;
		}
	}
}