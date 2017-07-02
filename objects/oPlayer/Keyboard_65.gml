// If you are in a position to jumpright then fling yourself
if (jumpright)
{
    // Set your speed to faster than normal and set the catapult flag to true
    hsp = -4;
    catapult = 1;
    
    global.dir = -1;
    
    // Make false the potential flag jump as youve jumped
    jumpright = 0;
    
}
else
{
    // If hes in the middle of catapulting ignore regular movement, if hes not walk as usual
    if(!catapult)
    {
        hsp = -walksp;
        
        global.dir = -1;
    }
}