
if follow1 == true{
	x = oPlayer.x
	y = oPlayer.y -30
	if !instance_exists(oSecretTree2){
		instance_create_layer(1119,1389,"Instances",oSecretTree2)
	}
	
	if global.openedp1 == true{
		instance_destroy(self)
		show_debug_message("Key drstroyed")
	}

}

if follow2 == true{
	x = oPlayer2.x
	y = oPlayer2.y -30
	if !instance_exists(oSecretTree2){
		instance_create_layer(1119,1389,"Instances",oSecretTree2)
	}
	if global.openedp2 == true{
		instance_destroy(self)
		show_debug_message("Key drstroyed")
	}

}


if place_meeting(x,y,oPlayer) and follow1 != true and follow2 != true and global.haskey != true{
	audio_play_sound(itemget,1,false)
	global.haskey = true
	follow1 = true;
}


if place_meeting(x,y,oPlayer2) and follow2 != true and follow1 != true and global.haskeyp2 != true{
	audio_play_sound(itemget,1,false)
	global.haskeyp2 = true
	follow2 = true;
}

