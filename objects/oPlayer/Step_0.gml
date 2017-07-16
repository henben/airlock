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
	
	//take player input
	
	//thrust
	if KEY_JUMP {
		xSpd += lengthdir_x(thrustForce,headAngle);
		ySpd += lengthdir_y(thrustForce,headAngle);
	  }

	if KEY_RIGHT {
		headAngle -= turnSpd;
	}
	if KEY_LEFT {
		headAngle += turnSpd;
	}	


	//handle horizontal wall collisions

	//check if player is hitting wall horizontally
	if (place_meeting(x + xSpd, y, oWall))
	{
		//if moving right and hitting a wall, turn sprite left, stick to right
	   if (sign(xSpd))
		{
			headAngle = 180;
			image_angle = 180;
			stickright = 1;
		}
		
		else
		
		{
			headAngle = 0;
			image_angle = 0;
			stickleft = 1;
		}

	   //Move until contact with the wall
	   if (xSpd != 0)
	   {

	        while (!place_meeting(x + sign(xSpd), y, oWall)) x += sign(xSpd);
	   }

	   xSpd = 0;
	}

	//	// Dealing with right side (Red Case)
	//if (place_meeting(x + 1, y, oWall))
	//{ 
	   
	
		
	//	//xSpd = 2;
		
	
		
	//    //jumpleft = 0;
	//    //jumpright = 1;
    
	//    //catapult = 0;
    
	//    //if(KEY_JUMP)
	//    //{
	//    //    ySpd = -2
	//    //}
    
	//    //if(KEY_DOWN)
	//    //{
	//    //    ySpd = 2;
	//    //}
	//}
	//else 
	//{
	//    stickright = 0;
	//}

	//// Dealing with Left Side (Blue Case)
	//if (place_meeting (x - 1, y, oWall))
	//{ 
	//    stickleft = 1;
		
	//	headAngle = 0;
		
	//	//xSpd = -2;
    
	//    //jumpleft = 1;
	//    //jumpright = 0;
    
	//    //catapult = 0;
    
	//    //if(KEY_JUMP)
	//    //{
	//    //    ySpd = -2;
	//    //}
    
	//    //if(KEY_DOWN)
	//    //{
	//    //    ySpd = 2;
	//    //}
	//}
	//else 
	//{
	//    stickleft = 0;
	//}

	//Do horizontal movement
	x += xSpd;
	
	//handle vertical wall collisions
	
	//check if we're hitting a wall vertically
	if (place_meeting(x, y + ySpd, oWall))
	{
	
	   	//if moving up and hitting a wall, point sprite down and stick to top
	   if (sign(ySpd))
		{
			headAngle = 90;
			image_angle = 90;
			sticktop = 1;
		}
		
		else
		
		{
			headAngle = 270;
			image_angle = 270;
			stickbottom = 1;
		}
		
	   //Move until contact with the wall
	   if (ySpd != 0)
	   {
	        while (!place_meeting(x, y + sign(ySpd), oWall)) y += sign(ySpd);
	   }

	   ySpd = 0;
	}
	
	
	y+=ySpd;
	

	
	image_angle = headAngle;
	
}
	
	
if (sticking) {

	// Stop moving when no keys are pressed
	//if (!KEY_RIGHT and !KEY_LEFT) xSpd = 0;

	// Stop moving when no keys are pressed
	//if (!KEY_JUMP and !KEY_DOWN) ySpd = 0;
	
	if KEY_JUMP {
		xSpd += lengthdir_x(jumpSpd,headAngle);
		ySpd += lengthdir_y(jumpSpd,headAngle);
		stickbottom = 0;
		sticktop = 0;
		stickleft = 0;
		stickright = 0;
	  }
	
	if (stickright) {
		if (KEY_RIGHT) 
			{
				ySpd = -walkSpd;
			}
		if (KEY_LEFT)
			{
				ySpd = walkSpd;
			}
	}
	
	if (stickleft) {
		if (KEY_RIGHT) 
			{
				ySpd = walkSpd;
			}
		if (KEY_LEFT)
			{
				ySpd = -walkSpd;
			}
	}
	
	if (stickbottom) {
		if (KEY_RIGHT) 
			{
				xSpd = -walkSpd;
			}
		if (KEY_LEFT)
			{
				xSpd = walkSpd;
			}
	}
	if (sticktop) {
		if (KEY_RIGHT) 
			{
				xSpd = walkSpd;
			}
		if (KEY_LEFT)
			{
				xSpd = -walkSpd;
			}
	}

	x += xSpd;
	y += ySpd;
	xSpd = 0;
	ySpd = 0;
}




