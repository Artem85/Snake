package utils
{
	import flash.display.InteractiveObject;
	import flash.display.LoaderInfo;
	
	
	public class Warehouse
	{
		static private var instance:Warehouse;
		
		private var loaderInfo:LoaderInfo;
		
		static public function getInstance():Warehouse{
			if (instance==null){
				instance = new Warehouse();
			}
			return instance;
		}
		
		public function setData(loaderInfo:LoaderInfo):void{
			this.loaderInfo = loaderInfo;
			
		}
		public function getAsset(name:String):InteractiveObject {
			if (loaderInfo.applicationDomain.hasDefinition(name)){
				var AssetClass:Class = loaderInfo.applicationDomain.getDefinition(name) as Class;
				var mc:InteractiveObject = new AssetClass();
				return mc;
			}	
			return null;	
		}
		public function getAssetClass(name:String):Class {
			if (loaderInfo.applicationDomain.hasDefinition(name)){
				var AssetClass:Class = loaderInfo.applicationDomain.getDefinition(name) as Class;
				return AssetClass;
			}	
			return null;
		}
	}
}