show_debug_message("scrControllerCreateEvent started")

scrConstants() 

show_debug_message("Running server side")
global.networking_side = SERVER
show_debug_message("Creating server socket")
global.server = network_create_server(network_socket_tcp, 6510, 3)
show_debug_message("Creating client sockets")
global.client[PLAYER1] = network_create_socket(network_socket_tcp)
global.client[PLAYER2] = network_create_socket(network_socket_tcp)
global.ip_address[PLAYER1] = "127.0.0.1"
// global.ip_address[PLAYER2] = "127.0.0.1"
network_connect( global.client[PLAYER1], global.ip_address[PLAYER1], 6510 )
// network_connect( global.client[PLAYER2], global.ip_address[PLAYER2], 6510 )

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


show_debug_message("scrControllerCreateEvent finished")
