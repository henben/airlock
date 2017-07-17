# airlock
Airlock game prototype

This is the prototype for Airlock (working title). Airlock is Spelunky meets Gravity (with Sandra Bullock).

In Airlock, the player controls an astronaut in a space station which is undergoing a disaster. The player's goal is to 
navigate the space station to get to the end of the level (which might be the next section of the station, or an escape pod).

## TODO

- [x] Stop moving sideways at an edge
- [ ] Jumping with aim
- [ ] Jumping with adjustable force
- [ ] Weak 'swimming'

## Movement

The space station has no gravity, but the astronaut can stick to walls and move along them, or launch herself off walls with a chosen
direction and force.

In a pressurised room when not touching the wall, perhaps the astronaut can 'swim' slowly. Some items (fire extinguisher, 
reaction pistol, EVA rig) enable the astronaut to move around Asteroids style.

## Astronaut

The astronaut has health (5 hearts?)
The astronaut has a personal oxygen level. If this is depleted fully, the astronaut takes ongoing damage.
[If the astronaut is exposed to vacuum, maybe this does extra damage, above the zero-oxygen damage rate.]

## Pressure and oxygen

Rooms in the space station have a pressure level. Airlocks, shutters, portholes, breaches
and walls divide rooms from other rooms, or from the outside vacuum of space. 

A totally depressurised room, or outside space, has a pressure level of zero.

If an opening exposes a pressurised room to vacuum, this causes a sucking force that moves all untethered objects,
and the player, towards the opening, until the room is fully depressurised.

If a suitable object is sucked into an opening, it can plug the opening and seal it (this may be a partial seal which only
reduces the rate of depressurisation). 
This is more applicable to small openings like breaches or broken portholes.

Rooms have an oxygen level which represents partial oxygen pressure. 

## Types of openings

Airlocks: two doors, airlock cycle allows you to pass from vacuum to pressure without losing pressure, or vice versa. 

Shutters: one door that closes if either side falls below a certain pressure level.

Portholes: transparent window that can be broken more easily than a wall, creating an opening.

Breach: a hole in a wall, can be created by a bullet or explosion.

## Indicators

Airlocks, shutters and portholes have indicators to show the state of the room (on either side, except if one side is space).

The indicator is green if there is breathable air; orange if there is air but it's not breathable; red if depressurised.

The indicator blinks green/red (2:1?) if air is present and breathable but pressure is dropping, orange/red if air is present but unbreathable
and pressure is dropping, green/orange if air is becoming unbreathable (due to O2 loss) but pressure is stable.

The indicator uses a different blink ratio to indicate a reversing state - e.g. if pressure is increasing, blink red/green 2:1.

## Fire

Rooms can contain fires, which gradually decrease the oxygen level in the air.

Depressurising a room puts out fires.

## Spacesuit

If the astronaut has a spacesuit, she has an extra oxygen reserve that is only used up when in vacuum or unbreathable air.

When the reserve is being used up, the helmet visor automatically closes up.

Some openings are too small to pass through in a suit - e.g. ducts, broken portholes.

## Items

Wrench.
O2 cylinder.
Fire extinguisher.
Reaction pistol.
Survival pistol.
Shotgun.
EVA rig.
Sealant pistol.
