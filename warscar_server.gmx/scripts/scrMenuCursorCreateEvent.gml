input_forward = vk_up
input_right = vk_right
input_left = vk_left
input_backward = vk_down
input_fire1 = vk_control
input_fire2 = vk_alt
input_fire3 = vk_space
input_change_spawn = ord('S')
input_flag = ord('F')

scrInputClear()

gamepad_set_axis_deadzone(1, 0.2);
gamepad_set_axis_deadzone(2, 0.2);

current_player = PLAYER1

show_debug_message("Creating networking buffer for cursor object")
network_buff = buffer_create( 256, buffer_grow, 1)
buffer_seek(network_buff, buffer_seek_start, 0);
buffer_write(network_buff, buffer_s16, PING_CMD );
network_send_packet( global.client[current_player], network_buff, buffer_tell(network_buff) );

