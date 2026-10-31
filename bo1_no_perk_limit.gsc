init()
{
        if ( GetDvar( #"zombiemode" ) == "1" )
        {
            level thread onPlayerConnect();
        }
            
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill ("connecting", player);

		player thread onPlayerSpawned();
	}
}

onPlayerSpawned()
{
	for(;;)
	{
		self waittill("spawned_player");

		self.num_perks = -5; //Remove perk limit, must be a negative number

	}
}
