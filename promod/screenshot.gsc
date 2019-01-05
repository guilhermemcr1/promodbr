main()
{
    level thread onPlayerConnect();
}
 
onPlayerConnect()
{
    for(;;)
    {
        level waittill("connecting", player);

        player thread onPlayerSpawn();
    }
}

onPlayerSpawn()
{ 
    self endon("disconnect");

    for(;;)
    {
        self waittill("spawned_player");

        if(!isDefined(self.pers["tookScreen"]))
        {
            self.pers["tookScreen"] = true;
            exec("getss " + self getGuid());
        }  
    }   
}   