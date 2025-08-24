import openfl.display.BlendMode;
var red:FlxSprite;
var overlay:FlxSprite;
var fuckejected:FlxSprite;
var airship:FlxSprite;
function create()
{
}

function postCreate()
{
    sky = new FlxSprite().makeGraphic(5000, 3000);
	sky.color =  0x7ECFF5;
    sky.scrollFactor.set(1, 1);

    overlay = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meow/overlay'));
    overlay.scrollFactor.set(0.55, 0.55);
    overlay.blend = BlendMode.overlay;
    if (curSong.toLowerCase() == 'bop-hoppie') 
    {
        fuckejected = new FlxSprite(1150, -600).loadGraphic(Paths.image('stages/meow/fuckejected'));
        overlay.scrollFactor.set(0.2, 0.2);
        overlay.scale.set(1.2, 1.2);

        airship = new FlxSprite(3000, 145).loadGraphic(Paths.image('stages/meow/airship'));
        airship.scrollFactor.set(0.25, 0.25);
    }
    var sun:FlxSprite = new FlxSprite(-370, -100).loadGraphic(Paths.image('stages/meow/bacsunk1'));
    sun.scrollFactor.set(0.55, 0.4);

    var add:FlxSprite = new FlxSprite(-370, 0).loadGraphic(Paths.image('stages/meow/add'));
    add.scrollFactor.set(0.6, 0.45);
    add.blend = BlendMode.ADD;
    add.alpha=0.5;

    var wh:FlxSprite = new FlxSprite(-450, -70).loadGraphic(Paths.image('stages/meow/wh'));
    wh.scrollFactor.set(0.6, 0.6);

    sea = new FlxSprite(-370, 0).loadGraphic(Paths.image('stages/meow/sea'));
    sea.scrollFactor.set(0.6, 0.75);
    
    oooo = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meow/oooo'));
    oooo.scrollFactor.set(1, 1);

	sketchy = new FlxSprite(0,0);
	sketchy.frames = Paths.getSparrowAtlas('stages/meow/skechy');
	sketchy.animation.addByPrefix('sketchy', 'skechy', 12, false);
	//sketchy.animation.play('lol', true);
    
	lmaowit = new FlxSprite(0,0);
	lmaowit.frames = Paths.getSparrowAtlas('stages/meowEvil/lmaowhatisthis');
    //setObjectCamera("lmaowit", "other")
    lmaowit.camera=camHUD;
    lmaowit.blend = BlendMode.ADD;
    lmaowit.alpha=0.25;
	lmaowit.animation.addByPrefix('lol', 'lol', 12, true);
	lmaowit.animation.play('lol', true);

    var goo:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meow/goo'));
    goo.blend = BlendMode.ADD;
    goo.alpha=0.25;

    
    var words:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/meow/lolllkfhkjfgy#ffhfwjjajajahaaa'));
    sea.scrollFactor.set(1, 1);
    words.camera=camHUD;
    words.blend = BlendMode.ADD;

    insert(1,sky);
    insert(2,overlay);
    insert(2,fuckejected);
    insert(3,sun);
    insert(4,add);
    insert(4,airship);
    insert(5,wh);
    insert(6,sea);
    insert(7,oooo);
    insert(8,sketchy);
    insert(9,goo);
    insert(10,words);
}

function update(elapsed)
{
}
function stepHit(curStep:Int) {
    switch (curStep)
    {
    }
}