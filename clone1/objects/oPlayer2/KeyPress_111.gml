/// @description Insert description here
// You can write your code in this editor




if global.touchnpcp2{
	global.showmes1p2 = true
	//audio_play_sound(talk,1,false)
	audio_play_sound(choose(voicefdefeat09,voicefdefeat10,voicefdefeat100,voicefdefeat101,voicefdefeat102,voicefdefeat104,voicefdefeat105),1,false)
}

if global.touchnpc2p2{
	global.showmes2p2 = true
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