///scr_get_input
up_key = keyboard_check_pressed(vk_up)
left_key = keyboard_check_pressed(vk_left)
down_key = keyboard_check_pressed(vk_down)
right_key = keyboard_check_pressed(vk_right)

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
