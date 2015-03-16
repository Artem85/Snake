package core.view.components
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.EventDispatcher;
	
	import utils.Warehouse;
	
	public class ViewLogic extends EventDispatcher
	{
		protected var displayObject:DisplayObject;
		
		public function ViewLogic(name:String){
			this.displayObject = Warehouse.getInstance().getAsset(name);
		}
		public function get content():DisplayObject{
			return displayObject;
		}
	} 
}