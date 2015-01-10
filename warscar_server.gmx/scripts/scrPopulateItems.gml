scaling_factor = room_width * room_height / (12000 * 12000)
show_debug_message("room_width = "+string(room_width))
show_debug_message("room_height = "+string(room_height))

// randomize seed
randomize()

show_debug_message("Populating items")
// populate items
repeat 50*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objItemHealth)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}

repeat 50*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objItemAmmo)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}
repeat 50*scaling_factor
{
    map_object_id = instance_create((random(room_width) div TILE_SIZE)*TILE_SIZE, (random(room_height) div TILE_SIZE)*TILE_SIZE, objLandMine)
    with map_object_id
    {
        scrFindFreeSpace() ;
    }
}