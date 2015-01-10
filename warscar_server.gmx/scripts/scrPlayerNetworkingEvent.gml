// https://www.yoyogames.com/tech_blog/11 for tutorial

show_debug_message("networking event")

var event_id = ds_map_find_value( async_load, "id" )
var network_event_type = ds_map_find_value(async_load, "type")

// if network_event_type == network_type_connect // connection
{
    var socket_id = ds_map_find_value(async_load, "socket")
    var ip_addr = ds_map_find_value(async_load, "ip")
    show_debug_message("Packet received from ip ="+string(ip_addr)+", socket ="+string(socket_id))
}


