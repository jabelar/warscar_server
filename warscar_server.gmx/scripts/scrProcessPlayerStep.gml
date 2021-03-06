// show_debug_message("scrProcessPlayerStep starting")

scrProcessInput()

if current_player == PLAYER1
{
show_debug_message("Sending networking buffer for player "+string(current_player+1))
buffer_seek(network_buff, buffer_seek_start, 0);
buffer_write(network_buff, buffer_string, "Test from player ="+string(current_player+1) );
network_send_packet( global.client[current_player], network_buff, buffer_tell(network_buff) );
}

switch state
{
    case NORMAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessCollisions()
        scrProcessTankOther()
        if my_health <= HEALTH_BASE*0.6
        {
            state = CRITICAL
            // create smoking effect
            alarm[3]= 1
        }
        else
        {
            // stop smoking
            alarm[3] = -1
        }
        if my_health <= 0 then state = DYING
        break ;
    }
    case CRITICAL:
    {
        scrProcessTankMovement()
        scrProcessTankWeapons()
        scrProcessCollisions()
        scrProcessTankOther()

        if my_health > 30 then state = NORMAL // happens when health restored
        if my_health <= 0 then state = DYING
        break ;
    }
    case DYING:
    {
        effect_create_above(ef_explosion, x, y, 1, c_red)
        switch global.game_type
        {
            case VERSUS:
            {
                if current_player = PLAYER1 then global.player_score[PLAYER2] += 1 else global.player_score[PLAYER1] += 1
                break ;
            }
            case CAPTURE_THE_FLAG:
            {
                // do nothing
                break ;
            }
        }
        marker_id = instance_create(xstart, ystart, objRespawnMarker)
        marker_id.respawn_index = object_index
        audio_play_sound(sndExplosion, 1, false)
        instance_destroy()
        break ;
    }   
}

// show_debug_message("scrProcessPlayerStep finished")
