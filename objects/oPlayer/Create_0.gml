/// @description Insert description here
// You can write your code in this editor

event_inherited(); // Used to inherit parent player object properties


// Flags to track orientation state of player
sticking = 0;
sticktop = 0;
stickleft = 0;
stickright = 0;
stickbottom = 0;

// Flags to track if player can jump either left/right
jumpleft = 0;
jumpright = 0;

// Flag to track if player is in catapult state
//catapult = 0;


// Settings
walkSpd = 3; // speed when walking
maxSpd = 10; // maximum moving speed
jumpSpd = 6; // jump speed
thrustForce = 1; //thrust force

headAngle = 270;
offset = sprite_height/2-1; // player sprite should be centered, so it needs an offset to not sink into the ground
turnSpd = 10; // how fast the player sprite turns (between 0-1)

// Movement
xSpd = 0;
ySpd = 0;
