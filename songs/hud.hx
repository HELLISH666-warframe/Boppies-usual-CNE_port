public var FINALLY_INF_THY_FUCKING_HUD:Bool = false;
function create() {
}
function postCreate() {
	comboGroup.x=500;
	comboGroup.y=250;
	for(spr in comboGroup.group.members){
		spr.scale.set(0.2, 0.2);}
	
}
/*function postUpdate(elapsed:Float) {
	if (!FINALLY_INF_THY_FUCKING_HUD)
	for(spr in comboGroup.group.members){
		spr.cameras = [camHUD];
	spr.scale.set(0.5, 0.5);
	}
}*/