package ru.kutu.osmf.advertisement {
	
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.display.SimpleButton;
	
	public class AdvCloseButton extends SimpleButton {
		
		private static const BUTTON_SIZE:Number = 14.0;
		
		public function AdvCloseButton() {
			// hit area
			var sh:Shape = new Shape();
			var g:Graphics = sh.graphics;
			g.beginFill(0, 0);
			g.drawRect(0, 0, BUTTON_SIZE, BUTTON_SIZE);
			
			super(
				getButtonShape(0xCCCCCC),
				getButtonShape(0xFFFFFF),
				null,
				sh
			);
		}
		
		private function getButtonShape(color:uint, alpha:Number=1.0):DisplayObject {
			var sh:Shape = new Shape();
			var g:Graphics = sh.graphics;
			
			var r:Number = 4.0;
			var t:Number = 2.0;
			
			g.beginFill(0, 0.8);
			g.drawRoundRect(-1, -1, BUTTON_SIZE + 2, BUTTON_SIZE + 2, r + 1);
			g.endFill();
			
			g.beginFill(color, alpha);
			g.drawRoundRect(0, 0, BUTTON_SIZE, BUTTON_SIZE, r);
			g.drawRoundRect(t, t, BUTTON_SIZE - 2*t, BUTTON_SIZE - 2*t, r-t);
			g.endFill();
			
			g.lineStyle(t, color, alpha);
			g.moveTo(r, r);
			g.lineTo(BUTTON_SIZE - r, BUTTON_SIZE - r);
			g.moveTo(BUTTON_SIZE - r, r);
			g.lineTo(r, BUTTON_SIZE - r);
			
			return sh;
		}
		
	}
	
}
