var done = false;
var sunshine:FlxSprite;
function update() {
	if (done != (done = true)) {
		var title:FlxSprite = new FlxSprite(0, -100).loadGraphic(Paths.image('menus/titlescreen/logo'));
		sunshine = new FlxSprite(0, -100).loadGraphic(Paths.image('menus/titlescreen/sunshine'));
		remove(titleText);
		import flixel.addons.display.FlxBackdrop;
		var animbarScrt = new FlxBackdrop(Paths.image('menus/titlescreen/pressenter'), FlxAxes.X, 0, 0);
		var animbarScrb = new FlxBackdrop(Paths.image('menus/titlescreen/pressenter'), FlxAxes.X, 0, 0);
		animbarScrb.velocity.x -= 120;
		animbarScrb.angle=180;
		animbarScrb.flipX=true;
		animbarScrt.velocity.x += 120;
		insert(members.indexOf(titleScreenSprites), animbarScrb);
		insert(members.indexOf(titleScreenSprites), animbarScrt);
		insert(members.indexOf(titleScreenSprites), title);
		insert(members.indexOf(titleScreenSprites), sunshine);
		animbarScrt.y = 650;
	}
}
function beatHit(curBeat) {
	FlxTween.completeTweensOf(FlxG.camera);
	FlxG.camera.zoom += 0.03;
	FlxTween.tween(FlxG.camera, {zoom: 1}, Conductor.crochet / 1500, {ease: FlxEase.backOut});
	FlxTween.tween(sunshine, {alpha: 1}, Conductor.crochet / 1500, {ease: FlxEase.backOut,onComplete: function(twn:FlxTween) 
		FlxTween.tween(sunshine, {alpha: 0},0.0001, {ease: FlxEase.linear})});
}