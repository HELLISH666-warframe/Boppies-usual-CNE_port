import flixel.text.FlxTextAlign;
import flixel.addons.display.FlxBackdrop;

function postCreate() {
	bg = new FlxBackdrop(Paths.image('menus/menuDesatFREEPLAY'), FlxAxes.X, 0, 0);
	insert(1,bg);

	var bar:FlxSprite = new FlxSprite(0,90).loadGraphic(Paths.image('menus/coolting'));
	bar.antialiasing = true;
	bar.scale.set(3,1);
	add(bar);
}
function update(elapsed:Float) {
	bg.x -= 1.16 * 60 * elapsed;
}