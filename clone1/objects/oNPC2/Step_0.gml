if global.showmes2 or global.showmes2p2{
	if !instance_exists(oSlime){
		instance_create_layer(2111,445,"Instances",oSlime)
		audio_play_sound(choose(spawn_music_03,spawn_music_04,spawn_music_05),1,false)
	}
}

if global.showmes2{
	show_debug_message("got it")
	alarm_set(0,60)
	global.showmes2 = false

}




if global.showmes2p2{
	show_debug_message("got it")
	alarm_set(0,60)
	global.showmes2p2 = false

}

