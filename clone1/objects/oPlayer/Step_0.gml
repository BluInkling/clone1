image_speed = 0
p = 0

if (keyboard_check(vk_lshift)){
	spd = 4
	imgspd = 3
} else spd = 2 imgspd = 2




if (keyboard_check(ord("D")))
{
	p=1
	image_xscale = 1
	sprite_index = squidboy
	image_speed = imgspd
	if (!place_meeting(x+spd,y,oWall)){
		x += spd; //+	
		colliding = false
	} else colliding = true
} 

if (keyboard_check(ord("W")))
{
	p=1
	sprite_index = squidboyup
	image_speed = imgspd
	if (!place_meeting(x,y-spd,oWall)){
		y -= spd; //-
		colliding = false;
	} else colliding = true
	
}



if (keyboard_check(ord("S")))
{
	p = 1
	sprite_index = squidboy
	image_speed = imgspd
	if (!place_meeting(x,y+spd,oWall)){
		y += spd; //-
		colliding = false;
	} else colliding = true
}


if (keyboard_check(ord("A")))
{
	p=1
	image_xscale = -1
	sprite_index = squidboy
	image_speed = imgspd
	if (!place_meeting(x-spd,y,oWall)){
		x -= spd; //-
		colliding = false
	} else colliding = true
} 

//COLLISION

if colliding == true and place_meeting(x,y-spd,oDoor){
	show_debug_message("DOOR COLLIDING")
	if global.haskey{
		audio_play_sound(alright,1,false)
		instance_destroy(oDoor)
	}
} 



//if touchdoor == true and global.haskey == true{
//	audio_play_sound(alright,1,false)
//	instance_destroy(oDoor)
//}

if colliding == true and (place_meeting(x+spd,y,oNPC1) or place_meeting(x-spd,y,oNPC1) or place_meeting(x,y+spd,oNPC1) or place_meeting(x,y-spd,oNPC1)){
	global.touchnpc = true
	//show_debug_message("NPC COLLIDING")
	
} else global.touchnpc = false

if colliding == true and (place_meeting(x+spd,y,oNPC2) or place_meeting(x-spd,y,oNPC2) or place_meeting(x,y+spd,oNPC2) or place_meeting(x,y-spd,oNPC2)){
	global.touchnpc2 = true
	//show_debug_message("NPC 2 COLLIDING")
	
} else global.touchnpc2 = false


if colliding == true and (place_meeting(x+spd,y,oSwitchRed) or place_meeting(x-spd,y,oSwitchRed) or place_meeting(x,y+spd,oSwitchRed) or place_meeting(x,y-spd,oSwitchRed)){
	touchswitch = true;
	
} else touchswitch = false;

//camera_set_view_pos(view_camera[0], x-window_get_width()/2,y-window_get_height()/2)
//camera_set_view_speed(view_camera[0],.5,.5)


//animation
if p = 0{

	image_index = 0
}