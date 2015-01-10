scaling_factor = room_width * room_height / (12000 * 12000)
show_debug_message("room_width = "+string(room_width))
show_debug_message("room_height = "+string(room_height))

// randomize seed
randomize()

show_debug_message("Populating buildings")
// populate buildings
repeat 20*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objBuilding1)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}

repeat 20*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objBuilding2)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}

repeat 20*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objBuilding3)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}

repeat 20*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objBuilding4)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}