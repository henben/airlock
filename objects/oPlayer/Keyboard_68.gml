// If you are in a position to jumpleft then fling yourself
if (jumpleft)
{
    // Set your speed to faster than normal and set the catapult flag to true
    hsp = 4;
    catapult = 1; 
    
    global.dir = 1;
    
    // Make false the potential flag jump as youve jumped
    jumpleft = 0;
}
else
{
    // If hes in the middle of catapulting ignore regular movement
    
    
    if(!catapult)
    {
        hsp = walksp;
        global.dir = 1;
    }
}