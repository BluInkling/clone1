/// @description Insert description here
// You can write your code in this editor
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

var targetX = oPlayer.x - RES_W/2
var targetY = oPlayer.y - RES_H/2

targetX = clamp(targetX, 0, room_width - RES_W);
targetY = clamp(targetY, 0, room_height - RES_H);

camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);

camera_set_view_pos(camera, camX, camY);



