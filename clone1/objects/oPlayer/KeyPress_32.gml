/// @description Insert description here
// You can write your code in this editor




if global.touchnpc{
	global.showmes1 = true
	//audio_play_sound(talk,1,false)
	audio_play_sound(choose(voicefdefeat01,voicefdefeat02,voicefdefeat03,voicefdefeat04,voicefdefeat06,voicefdefeat07,voicefdefeat08),1,false)
}

if global.touchnpc2{
	global.showmes2 = true
	audio_play_sound(talk,1,false)
}

if touchswitch{
	if global.flipswitch == false{
		global.flipswitch = true;
		audio_play_sound(snd_noise_ch1,1,false);
	}
	else{
		global.flipswitch = false;
		audio_play_sound(snd_noise_ch1,1,false);
	}
}