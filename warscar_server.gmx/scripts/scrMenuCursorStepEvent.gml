// need to react to any input type
// so check them all
var click_pressed ;
var button_id ;

input_style_turret = TANK_KEYBOARD
input_style_tank = TANK_KEYBOARD

scrProcessInput()
if key_forward then y -=8
if key_backward then y += 8
if key_right then x += 8
if key_left then x -= 8
click_pressed = key_weapon1_pressed

input_style_tank = TANK_JOYSTICK_SING
current_player = PLAYER1
scrProcessInput()
if key_forward then y -=8
if key_backward then y += 8
if key_right then x += 8
if key_left then x -= 8
click_pressed = click_pressed or key_weapon1_pressed

scrKeepInRoom()

// cycle through options on each click of a button
if click_pressed
{
    button_id = instance_position(x, y, objParentButton)
    with button_id
    {
        image_index += 1
        if image_index >= image_number then image_index = 0
    }
}

// process starting the game   
if click_pressed and instance_position(x, y, objButtonPlay)
{
    room_goto(roomMain)
}
