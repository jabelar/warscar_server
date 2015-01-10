if input_style_tank == TANK_KEYBOARD
{
    if keyboard_check(input_change_spawn) then key_change_spawn = true
    key_flag = keyboard_check_pressed(input_flag)
    key_weapon1_pressed = keyboard_check_pressed(input_fire1) 
    key_weapon2_pressed = keyboard_check_pressed(input_fire2) 
    key_weapon3_pressed = keyboard_check_pressed(input_fire3) 

}
else
{
    // TODO
    // need to process current player stuff mapped to controller
    key_weapon1_pressed = gamepad_button_check_pressed(contrl_num, gp_shoulderr) or gamepad_button_check_pressed(contrl_num, gp_shoulderrb);
    key_weapon2_pressed = gamepad_button_check_pressed(contrl_num, gp_shoulderl) or gamepad_button_check_pressed(contrl_num, gp_shoulderlb); 
    key_weapon3_pressed = gamepad_button_check_pressed(contrl_num, gp_face3);
    key_flag = gamepad_button_check_pressed(contrl_num, gp_face2) // this is "B" button
}
