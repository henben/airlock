// Keyboard Inputs
// We use these so we can just type the variables
// instead of "keyboard_check(*)"
KEY_RIGHT = keyboard_check(ord("D"));
KEY_LEFT = keyboard_check(ord("A"));
KEY_JUMP = keyboard_check(ord("W")); 
KEY_DOWN = keyboard_check(ord("S"));

// Tracking whether player is sticking to a surface of any orientation
sticking = (stickright || stickleft || sticktop || stickbottom)

// This one's for variable jump height:
//KEY_FALL = keyboard_check_released(ord("W"));

//var cc;
//var inst;

if (!sticking) {

	//handle horizontal movement

	//check if player is hitting wall horizontally
	if (place_meeting(x + hsp, y, oWall))
	{
	   //Move until contact with the wall
	   if (hsp != 0)
	   {
	        while (!place_meeting(x + sign(hsp), y, oWall)) x += sign(hsp);
	   }

	   hsp = 0;
	}

		// Dealing with right side (Red Case)
	if (place_meeting(x + 1, y, oWall))
	{ 
	    stickright = 1;
    
	    //jumpleft = 0;
	    //jumpright = 1;
    
	    //catapult = 0;
    
	    //if(KEY_JUMP)
	    //{
	    //    vsp = -2
	    //}
    
	    //if(KEY_DOWN)
	    //{
	    //    vsp = 2;
	    //}
	}
	else 
	{
	    stickright = 0;
	}

	// Dealing with Left Side (Blue Case)
	if (place_meeting( x - 1, y, oWall) and !ground)
	{ 
	    stickleft = 1;
    
	    //jumpleft = 1;
	    //jumpright = 0;
    
	    //catapult = 0;
    
	    //if(KEY_JUMP)
	    //{
	    //    vsp = -2;
	    //}
    
	    //if(KEY_DOWN)
	    //{
	    //    vsp = 2;
	    //}
	}
	else 
	{
	    stickleft = 0;
	}

	//Do horizontal movement
	x += hsp;
	
	//handle vertical movement
	
	//check if we're hitting a wall vertically
	if (place_meeting(x, y + vsp, oWall))
	{
	   //Move until contact with the wall
	   if (vsp != 0)
	   {
	        while (!place_meeting(x, y + sign(vsp), oWall)) y += sign(vsp);
	   }

	   vsp = 0;
	}
	
	// Deal with ceiling
	if (place_meeting(x, y + 1, oWall))
	{ 
	    sticktop = 1;
    
	    //jumpleft = 0;
	    //jumpright = 1;
    
	    //catapult = 0;
    
	    //if(KEY_JUMP)
	    //{
	    //    vsp = -2
	    //}
    
	    //if(KEY_DOWN)
	    //{
	    //    vsp = 2;
	    //}
	}
	else 
	{
	    sticktop = 0;
	}
	
	// Deal with ceiling
	if (place_meeting(x, y - 1, oWall))
	{ 
	    stickbottom = 1;
    
	    //jumpleft = 0;
	    //jumpright = 1;
    
	    //catapult = 0;
    
	    //if(KEY_JUMP)
	    //{
	    //    vsp = -2
	    //}
    
	    //if(KEY_DOWN)
	    //{
	    //    vsp = 2;
	    //}
	}
	else 
	{
	    stickbottom = 0;
	}
	
	v+=vsp;
}
	
	
if (sticking) {

	// Stop moving when no keys are pressed
	if (!KEY_RIGHT and !KEY_LEFT) hsp = 0;

	// Stop moving when no keys are pressed
	if (!KEY_JUMP and !KEY_DOWN) vsp = 0;

}




