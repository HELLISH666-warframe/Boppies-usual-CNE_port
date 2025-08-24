import openfl.display.BlendMode;
var red:FlxSprite;
var overlay:FlxSprite;
function create()
{
}

function postCreate()
{
    sky = new FlxSprite(0, 0).makeGraphic(5000, 3000, 0x620000);
    sky.scrollFactor.set(1, 1);

    var back1:FlxSprite = new FlxSprite(0, -200).loadGraphic(Paths.image('stages/meowEvil/back1'));
    back1.scrollFactor.set(0.65, 0.65);

    var back0:FlxSprite = new FlxSprite(0, -100).loadGraphic(Paths.image('stages/meowEvil/back0'));
    back0.scrollFactor.set(0.8, 0.8);
    
    var back2:FlxSprite = new FlxSprite(0, -100).loadGraphic(Paths.image('stages/meowEvil/back2'));
    back2.scrollFactor.set(0.8, 0.8);
    back2.blend = BlendMode.ADD;

    field = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meowEvil/field'));
    
    overlay = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meowEvil/overlay'));
    FlxTween.color(overlay.color, 0.01, 0xFF0000, {ease: FlxEase.circOut});
    overlay.alpha=0.1;
    overlay.blend = BlendMode.ADD;
    
    frame = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meowEvil/ffffff'));
    //setObjectCamera("frame", "other")
    frame.camera=camHUD;
    overlay.alpha=0.85;
    
	lmaowit = new FlxSprite(0,0);
	lmaowit.frames = Paths.getSparrowAtlas('stages/meowEvil/lmaowhatisthis');
    //setObjectCamera("lmaowit", "other")
    lmaowit.camera=camHUD;
    lmaowit.blend = BlendMode.ADD;
    lmaowit.alpha=0.25;
	lmaowit.animation.addByPrefix('lol', 'lol', 12, true);
	lmaowit.animation.play('lol', true);
   // playAnim("lmaowit", "lol", false, false, 0)
    insert(1,sky);
    insert(2,back0);
    insert(3,back1);
    insert(4,back2);
    insert(5,field);

    insert(13,overlay);
    insert(1,frame);
    insert(1,lmaowit);
}

function update(elapsed)
{
}
function stepHit(curStep:Int) {
    switch (curStep)
    {
    }
}