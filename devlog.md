# Fall 2024 - Intro to Game Design @ SUNY New Paltz
* Name: Zachary Lopane
* [Trello Board](https://trello.com/b/mR0VP2jR/final-project-todo)
* [Proposal](https://github.com/Zzazzh/FinalProjectCPS293/blob/main/Proposal.pdf)


##2024-11-05 1.5 hr: fixed dependency error
* downloaded pngs stored in git from earlier push manually and continued replacing corrupted files

##2024-11-04 5 hr: tried to implement "conductor" node, fix corrupt files
* tried to add mechanism to measure beats and measures for a song to time enemy spawn properly
* condensed "enemy_right" "enemy_left" "enemy_up" and "enemy_down" scenes into one "enemy" scene
* had to re-do large portions of project because pulling from git caused dependency errors

##2024-10-23 1.5 hr: added rotation snapping
* added script so that if the rotation button is released within a degree threshold of any cardinal direction, the indicator clicks into the place (if button is released at 80 degrees, for example, it will be corrected to 90)

##2024-10-22 5 hr: (before class) Created Direction Indicator, Enemy movement 
* created direction indicator with rotational movement
* added signals for "good" and "bad" hits
* made enemy spawn randomized

## 2024-10-21 2 hr: Found Rhythm Game tutorial videos and forums to create animation, enemy spawn, and enemy despawn. Began "enemy_up" scene
* [Complete Godot Rhythm Game Tutorial] (https://www.youtube.com/watch?v=_FRiPPbJsFQ)
* [Making a rhythm game with Godot & Midi] (https://www.youtube.com/watch?app=desktop&v=owbRRxrIp14)
* [Tutorial RHYTHM GAME in Godot Engine] (https://www.youtube.com/watch?v=mwvcmbY8wiY&t=102s)
* [Rotation of indicator] (https://forum.godotengine.org/t/2d-joystick-player-rotation/18671/2)
* remade enemy sprite with eyes, added movement

## 2024-10-12 1 hr: Fix Bugs with 'player bounds'
* altered layer masks and collision script 

## 2024-10-8 3r: implement attack
* [added draft animation] (https://www.youtube.com/watch?v=8EVHNbgQCBg)
* created draft pixel art attack to see in debug
* reworked animation sprite, and reset animation scene
* fixed bug where player would automatically move left upon start (and clip through player bounds)

## 2024-10-7 1.5hr: implement killzone (failed)
* began creating kill zone to automatically respawn enemies when they reach the center of the playerbounds
* ran into issues with enemy spawning, tried reloading godot project and ran into a "missing dependencies" error
* reassigned sprites and scenes and had to redo "enemy" scene in order to resolve issue

## 2024-10-1 2hr: Added enemy spawning
* finished implementing playerbounds that allowed enemies (and not players) to pass through
* created ui button to spawn enemies randomly along 2D path

## 2024-09-29 .75hr: Worked on adding "Player Bounds" + added controller functionality
* added draft background (color rect) to make player bound more visible
* tried to convert sprite 2D ring to collision Shape
* Created 4 2D polygon collision shapes, to make a ring that players cannot cross

## 2024-09-24 1.75hr: Worked on Player Movement
* [Youtube Tutorial, Your First 2D GAME From Zero with GODOT 4! Vampire Survivor Style] (https://www.youtube.com/watch?v=GwCiGixlqiU)
* used this as a template for top player movement 
* Created a draft version of a player sprite to see if movement controls are working
#### Set up Final Project
* Set Up github repo w/ readme and devlog
* Set up godot project locally and pushed to GitHub 
* Searched for 2D Assets--to no success yet-- on itch.io
* Download Export Template





