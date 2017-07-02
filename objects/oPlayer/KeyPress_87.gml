//Jump with the up key when on the ground
if(ground)
{
    vsp = jumpsp;
}

if(sticking and !ground)
{
    vsp = -2;
    
    if(stickleft)
    {
        global.dir = -1
    }
    
    if(stickright)
    {
        global.dir = 1;
    }
}