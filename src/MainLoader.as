package
{

	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	
	[SWF(width='740', height='400', backgroundColor='#FFFFFF', frameRate='60')]
	public class MainLoader extends Sprite
	{
		private var _loader : Loader;
		// Create a loader view for the progress bar...
		//private var _assets : LoaderView;
		public function MainLoader()
		{
			if(stage) {
				init();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			}
			super();
		}
		
		protected function addedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			init();
		}
		
		protected function init():void
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.stageFocusRect = false;
			// Add the loader UI to the stage...
			//addChild(_assets = new LoaderView);
			
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, _onLoadComplete);
			_loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, _onProgress);
			_loader.load(new URLRequest("Main.swf"));
		}	
			
		
		protected function _onProgress(event:ProgressEvent):void
		{
			// increment progress bar
			//_assets.ui.progressBar.width = 3.27 * Math.round((event.bytesLoaded / event.bytesTotal) * 100);
		}
		
		protected function _onLoadComplete(event:Event):void
		{
			// remove loader ui on complete
			//removeChild(_assets);
			
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, _onLoadComplete);
			_loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, _onProgress);
			
			addChild(_loader);
		}
	}
}