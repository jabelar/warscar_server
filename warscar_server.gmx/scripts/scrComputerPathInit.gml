with (objPlayer2)
{
    mp_grid_add_instances(grid, objParentObstacle, false)
    path_found = mp_grid_path(grid, path, x, y, objPlayer1.x, objPlayer1.y, true)
    if path_found
    {
        path_start(path, 0, 0, false)
        prev_ai_target = ai_target
        xpathstart = x
        ypathstart = y
    }
    show_debug_message("Path found = "+string(path_found)+" and Path length ="+string(path_get_length(path)))
}