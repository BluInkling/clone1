image_speed = 0
p = 0

if (keyboard_check(vk_rcontrol)){
	spd = 4
	imgspd = 3
} else spd = 2 imgspd = 2




if (keyboard_check(vk_right))
{
	p=1
	image_xscale = 1
	sprite_index = squidboyPLAYER2
	image_speed = imgspd
	if (!place_meeting(x+spd,y,oWall)){
		x += spd; //+	
		colliding = false
	} else show_debug_message("x COLLIDING") colliding = true
} 

if (keyboard_check(vk_up))
{
	p=1
	sprite_index = squidboyupPLAYER2
	image_speed = imgspd
	if (!place_meeting(x,y-spd,oWall)){
		y -= spd; //-
	} else show_debug_message("y COLLIDING")
	
}



if (keyboard_check(vk_down))
{
	p = 1
	sprite_index = squidboyPLAYER2
	image_speed = imgspd
	if (!place_meeting(x,y+spd,oWall)){
		y += spd; //-
	} else show_debug_message("y COLLIDING")
}


if (keyboard_check(vk_left))
{
	p=1
	image_xscale = -1
	sprite_index = squidboyPLAYER2
	image_speed = imgspd
	if (!place_meeting(x-spd,y,oWall)){
		x -= spd; //-
		colliding = false
	} else show_debug_message("x COLLIDING") colliding = true
} 

//COLLISION

if colliding == true and place_meeting(x,y-spd,oDoor){
	show_debug_message("DOOR COLLIDING")
	if global.haskeyp2{
		audio_play_sound(alright,1,false)
		instance_destroy(instance_nearest(x,y,oDoor))
		global.openedp2 = true;
	}
} 

//if touchdoor == true and global.haskey == true{
//	audio_play_sound(alright,1,false)
//	instance_destroy(oDoor)
//}

if colliding == true and (place_meeting(x+spd,y,oNPC1) or place_meeting(x-spd,y,oNPC1) or place_meeting(x,y+spd,oNPC1) or place_meeting(x,y-spd,oNPC1)){
	global.touchnpcp2 = true
	show_debug_message("NPC COLLIDING")
	
} else global.touchnpcp2 = false

if colliding == true and (place_meeting(x+spd,y,oNPC2) or place_meeting(x-spd,y,oNPC2) or place_meeting(x,y+spd,oNPC2) or place_meeting(x,y-spd,oNPC2)){
	global.touchnpc2p2 = true
	show_debug_message("NPC 2 COLLIDING")
	
} else global.touchnpc2p2 = false


if colliding == true and (place_meeting(x+spd,y,oSwitchRed) or place_meeting(x-spd,y,oSwitchRed) or place_meeting(x,y+spd,oSwitchRed) or place_meeting(x,y-spd,oSwitchRed)){
	touchswitch = true;
	
} else touchswitch = false;

//camera_set_view_pos(view_camera[0], x-window_get_width()/2,y-window_get_height()/2)
//camera_set_view_speed(view_camera[0],.5,.5)


//animation
if p = 0{

	image_index = 0
}