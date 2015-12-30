#define scr_player


#define scr_playerCreate
var player = argument[0];
var lastRoom = global.lastRoom;

player.image_speed = 0;
player.image_index = 0;

player.initialised = false;


#define scr_playerStep
///playerStep(instance_id)
var player = argument[0];
var gridWidth = global.gridWidth;
var gridHeight = global.gridHeight;

// Keyboard and movement
if(keyboard_check_released(vk_left) || keyboard_check_released(ord('A'))){
    player.image_index = 2;
    // check not on the edge of a room
    if(player.x - gridWidth >= 0 && player.x - gridWidth < room_width){
        // check collisions with obstacles
        if(!place_meeting(player.x - gridWidth, player.y, obj_obstacle)){
            player.x -= gridWidth;
        }
        
        // check collisions with transitions
        if(place_meeting(player.x, player.y, obj_transition)){
            scr_playerTransition(player);
        }
    }
}

if(keyboard_check_released(vk_up) || keyboard_check_released(ord('W'))){
    player.image_index = 3;
    
    if(player.y - gridHeight >= 0 && player.y - gridHeight < room_height){
        if(!place_meeting(player.x, player.y - gridHeight, obj_obstacle)){
            player.y -= gridHeight;
        }
        
        if(place_meeting(player.x, player.y, obj_transition)){
            scr_playerTransition(player);
        }
    }
}

if(keyboard_check_released(vk_right) || keyboard_check_released(ord('D'))){
    player.image_index = 1;
    
    if(player.x + gridWidth >= 0 && player.x + gridWidth < room_width){
        if(!place_meeting(player.x + gridWidth, player.y, obj_obstacle)){
            player.x += gridWidth;
        }
        
        if(place_meeting(player.x, player.y, obj_transition)){
            scr_playerTransition(player);
        } 
    }
}

if(keyboard_check_released(vk_down) || keyboard_check_released(ord('S'))){
    player.image_index = 0;
    
    if(player.y + gridHeight >= 0 && player.y + gridHeight < room_height){
        if(!place_meeting(player.x, player.y + gridHeight, obj_obstacle)){
            player.y += gridHeight;
        }
        
        if(place_meeting(player.x, player.y, obj_transition)){
            scr_playerTransition(player);
        }
    }
}

if(keyboard_check_released(vk_space)){
    instance_create(-32,-32,obj_pause);
}

#define scr_playerTransition
var player = argument[0];
var gridWidth = global.gridWidth;
var gridHeight = global.gridHeight;

var transitionInstance = instance_position(player.x, player.y, obj_transition);
var targetRoom = transitionInstance.targetRoom;
if(room_exists(ds_map_find_value(global.roomMap,transitionInstance.targetRoom))){
    global.lastRoom = room_get_name(room);
    room_goto(ds_map_find_value(global.roomMap, transitionInstance.targetRoom));
} else {
    transitionInstance.displayRoomError = true;
}