/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,oPlayer){
	instance_destroy(oPlayer)
	audio_play_sound(fun_01,1,false)
}


if place_meeting(x,y,oPlayer2){
	instance_destroy(oPlayer2)
	audio_play_sound(fun_02,1,false)
}

if !instance_exists(oPlayer) and !instance_exists(oPlayer2)
{
	audio_play_sound(awe_01,1,false)
	audio_play_sound(snd_won_ch1,1,false)
	room_goto(3)
}


