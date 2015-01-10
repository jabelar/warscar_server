show_debug_message("scrControllerCreateEvent started")

scrConstants() 

global.networking_side = SERVER

global.game_type = CAPTURE_THE_FLAG

global.num_human_players = 1

global.player_type[PLAYER1] = HUMAN
global.player_type[PLAYER2] = COMPUTER

global.player_score[PLAYER1] = 0
global.player_score[PLAYER2] = 0

global.input_style_tank[PLAYER1] = TANK_JOYSTICK_DIR
global.input_style_tank[PLAYER2] = TANK_JOYSTICK_DIR

global.input_style_turret[PLAYER1] = TURRET_JOYSTICK_DIR
global.input_style_turret[PLAYER2] = TURRET_JOYSTICK_DIR

global.points_to_win = 1

global.music_level = 1.0

global.server = network_create_server(network_socket_tcp, 6510, 3)

show_debug_message("scrControllerCreateEvent finished")
