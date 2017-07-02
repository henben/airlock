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