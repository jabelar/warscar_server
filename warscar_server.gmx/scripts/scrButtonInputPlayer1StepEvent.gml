switch (image_index)
{
    case 0:
        global.input_style_tank[PLAYER1] = TANK_JOYSTICK_PAIR
        global.input_style_turret[PLAYER1] = TURRET_JOYSTICK_PAIR
        break ;
    case 1:
        global.input_style_tank[PLAYER1] = TANK_JOYSTICK_SING
        global.input_style_turret[PLAYER1] = TURRET_JOYSTICK_SING
        break ;
    case 2:
        global.input_style_tank[PLAYER1] = TANK_JOYSTICK_DIR
        global.input_style_turret[PLAYER1] = TURRET_JOYSTICK_DIR
        break ;
    case 3:
        global.input_style_tank[PLAYER1] = TANK_KEYBOARD
        global.input_style_turret[PLAYER1] = TURRET_KEYBOARD
        break ;
    case 4:
        global.input_style_tank[PLAYER1] = TANK_TOUCH
        global.input_style_turret[PLAYER1] = TURRET_TOUCH
        break ;
}