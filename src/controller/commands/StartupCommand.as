package controller.commands
{
	import config.GeneralNotifications;
	
	import core.view.mediator.RootMediator;
	
	import flash.display.Sprite;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class StartupCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void{
			registerCommands();
			
			var rootSprite:Sprite = notification.getBody() as Sprite;
			facade.registerMediator(new RootMediator(rootSprite)); 
//			sendNotification(GeneralNotifications.LOAD_FLASH); 
		}
		
		private function registerCommands():void{
			
		}
	}
}