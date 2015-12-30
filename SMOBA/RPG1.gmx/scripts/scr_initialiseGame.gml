global.gridWidth = 32;
global.gridHeight = 32;

global.playerHealth = 100;
global.playerLevel = 0;
global.playerProgress = 0;
global.lastRoom = "";

global.roomMap = ds_map_create();
var currentRoom = room_first;
while(room_exists(currentRoom)){
    if(!ds_map_find_value(global.roomMap,room_get_name(currentRoom))){
        ds_map_add(global.roomMap,room_get_name(currentRoom),currentRoom);
    }
    currentRoom = room_next(currentRoom);
}
