var upperBar = new FunkinSprite(-110, -350).makeGraphic(1500, 350, 0xFF000000);
var lowerBar = new FunkinSprite(-110, 720).makeGraphic(1500, 350, 0xFF000000);
function postCreate() {
	lowerBar.camera = upperBar.camera = camHUD;
	insert(1,upperBar);
    insert(1,lowerBar);
}
function onEvent(_) {
	if (_.event.name == 'chin_bars') {
		FlxTween.tween(upperBar, {y: -350+(Std.int(_.event.params[1]))}, _.event.params[0], {ease: FlxEase.quadOut});
		FlxTween.tween(lowerBar, {y: 720 - (Std.int(_.event.params[1]))}, _.event.params[0], {ease: FlxEase.quadOut});
	}
}