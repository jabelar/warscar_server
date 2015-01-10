switch (image_index)
{
    case 0:
        global.music_level = 1.0
        break ;
    case 1:
        global.music_level = 0.75
        break ;
    case 2:
        global.music_level = 0.5
        break ;
    case 3:
        global.music_level = 0.25
        break ;
    case 4:
        global.music_level = 0
        break ;
}
audio_sound_gain(global.background_music, global.music_level*0.25, 0)
