package
{
	import config.GeneralNotifications;
	
	import controller.commands.StartupCommand;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.puremvc.as3.patterns.facade.Facade;
	
	[SWF(frameRate="20", width="1200", height="600", backgroundColor="#ffffff")]
	public class Snake extends Sprite
	{
		public function Snake()
		{
			addEventListener(Event.ADDED_TO_STAGE,onAdded);
		}
		
		protected function onAdded(event:Event):void{
			removeEventListener(Event.ADDED_TO_STAGE,onAdded);
			
			Facade.getInstance().registerCommand(GeneralNotifications.START_UP,StartupCommand);
			Facade.getInstance().sendNotification(GeneralNotifications.START_UP,this);
			
		}
	}
}