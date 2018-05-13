/// scr_move_state
movement = MOVE;

// Get direction 
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

// Get the length
if (obj_input.xaxis == 0 and obj_input.yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face(dir);
} 

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;
