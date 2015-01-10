with objHomeBaseTeam1
{
    instance_create(x+sprite_width/2, y+sprite_height/2, objFlagRed)
    instance_create(x+sprite_width/2, y+sprite_height/2, objPlayer1)
}

with objHomeBaseTeam2
{
    instance_create(x+sprite_width/2, y+sprite_height/2, objFlagBlue)
    instance_create(x+sprite_width/2, y+sprite_height/2, objPlayer2)
}

scrPopulateBuildings()

scrPopulateItems()

if global.player_type[PLAYER2] == COMPUTER then scrComputerPathInit()
