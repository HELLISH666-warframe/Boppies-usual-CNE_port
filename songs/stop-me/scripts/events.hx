var time:Float = 0;
var shit = null; 
var glitch:CustomShader  = new CustomShader("glitch");
var aber:CustomShader  = new CustomShader("aberration");

function postCreate(){FlxG.camera.addShader(glitch);
	camHUD.addShader(glitch);
	FlxG.camera.addShader(aber);
	aber.data.aberration.value = [0.2];
	aber.data.effectTime.value = [0.5];
    shit = [scoreTxt, healthBarBG, healthBar, iconP1, iconP2, accuracyTxt, missesTxt];}

override function update(elapsed:Float){time += elapsed;
	glitch.data.iTime.value = [time];
}
function beatHit(curBeat){
	{
		switch(curBeat){
			case 200:
				for(s in shit){
				FlxTween.tween(s, {alpha: 0}, 0.25, {ease: FlxEase.linear});}
				for(b in strumLines.members[1]){
				FlxTween.tween(b, {alpha: 0}, 0.25, {ease: FlxEase.linear});}
				for(s in strumLines.members[0]){
				FlxTween.tween(s, {alpha: 0}, 0.25, {ease: FlxEase.linear});}
			case 262:
				FlxG.camera.visible=false;
				//setProperty("camGame.visible", false, false) setProperty("camOther.visible", false, false)
			case 264:
				for(s in shit){
				FlxTween.tween(s, {alpha: 1}, 0.25, {ease: FlxEase.linear});}
				for(s in strumLines.members[1]){
				FlxTween.tween(s, {alpha: 1}, 0.25, {ease: FlxEase.linear});}
				for(s in strumLines.members[0]){
				FlxTween.tween(s, {alpha: 1}, 0.25, {ease: FlxEase.linear});}
				FlxG.camera.visible=true;
				//setProperty("camGame.visible", true, false) setProperty("camOther.visible", true, false)
				camGame.flash(FlxColor.WHITE, 0.1);
			case 472:
				camGame.flash(FlxColor.WHITE, 0.5);
				FlxG.camera.visible=false;
				//setProperty("camGame.visible", false) cameraFlash("hud", "FF0000", 0.5, nil)
		}
	}
}
function onDadHit(e){
	executeEvent({name: "add_cam_zoom", params: [null,null]});
}
function onPlayerHit(e){
	executeEvent({name: "add_cam_zoom", params: [null,null]});
}