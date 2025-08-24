var kakkun:Bool = false;
function onEvent(_) {
	var eventEase = switch(_.event.params[0]) {
		case 'true': true;
		case 'false': false;
		case 'null': null;
	};
	kakku = eventEase;
	var value2:String = _.event.params[1];
	if (_.event.name == 'BeatKakkunHUD') {
		trace(eventEase);

		if (value2 == true){camHUD.flash(FlxColor.WHITE, 0.5);}
		if(kakkun = false){camHUD.angle = 0;}
		trace(kakkun);
	}
}
function stepHit(curStep){
	if ((kakkun = true) && (curStep % 8 == 0))
	{
		camHUD.angle = -1.5;
	}
	if ((curStep % 8 == 4) && (kakkun = true))
	{
		camHUD.angle = 1.5;
	}
}

function beatHit(curBeat){
	if (kakkun = true)
	{	
		executeEvent({name: "add_cam_zoom", "params": [0.02,0.05]});
	}
}