package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			if(stage) {
				init();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			}
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

			//Start Application
		}
	}
}
