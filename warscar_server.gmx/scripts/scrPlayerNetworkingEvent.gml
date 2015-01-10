// https://www.yoyogames.com/tech_blog/11 for tutorial

show_debug_message("networking event")

var socket_id = ds_map_find_value( async_load, "id" )
var network_event_type = ds_map_find_value(async_load, "type")

// if network_event_type == network_type_connect // connection
{
    var port = ds_map_find_value(async_load, "port")
    var ip_addr = ds_map_find_value(async_load, "ip")
    var received_buff = ds_map_find_value(async_load, "buffer")
    show_debug_message("Packet received from ip ="+string(ip_addr)+", socket ="+string(socket_id)+", port ="+string(port))
    if is_undefined(received_buff)
    {
        show_debug_message("Packet contents undefined")
    }
    else
    {
        show_debug_message("Packet contents ="+string(buffer_read(received_buff, buffer_string)))
    }
}


