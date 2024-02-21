/// @description Insert description here
// You can write your code in this editor
//#macro RES_W 1000
//#macro RES_H 600


#macro RES_W 500
#macro RES_H 600
#macro RES_SCALE 1

#macro CAM_SMOOTH 0.1



//enable views
view_visible[1] = true
view_enabled = true
//view_set_xport(1, -900)

//view_xport[1] = 200;


//create cam
camera = camera_create_view(0, 0, RES_W, RES_H);

view_set_camera(1, camera); //view_set_camera(1, camera);

window_set_size((RES_W * 3) * RES_SCALE, RES_H * RES_SCALE);
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);

//center window
var display_width = display_get_width();
var display_height = display_get_height();

var window_width = (RES_W * 2) * RES_SCALE;
var window_height = RES_H * RES_SCALE;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);
show_debug_message(view_surface_id[1])