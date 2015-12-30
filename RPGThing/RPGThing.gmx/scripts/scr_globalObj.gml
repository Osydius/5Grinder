#define scr_globalObj


#define scr_globalObj_create
var globalObj = argument[0];

// Set Grid size
global.gridWidth = 32;
global.gridHeight = 32;

// Set player information
global.playerHealth = 100;
global.playerLevel = 0;
global.playerProgress = 0;
global.lastRoom = "";

// Create empty player inventory
global.playerInventory = ds_map_create();
ds_map_add(global.playerInventory,"wood",0);
ds_map_add(global.playerInventory,"stone",0);
ds_map_add(global.playerInventory,"currency",0);

var playerBag = ds_list_create();
ds_map_add(global.playerInventory,"bag",playerBag);

// Set town information
global.townWidth = room_width/32;
global.townHeight = room_height/32;
global.townGrid = ds_grid_create(global.townWidth, global.townHeight);
for(i=0;i<ds_grid_width(global.townGrid);i++){
    for(k=0;j<ds_grid_height(global.townGrid);j++){
        var plotInfo = ds_map_create();
        ds_map_add(plotInfo,"occupied",false);
        ds_map_add(plotInfo,"plotSize","");
        ds_map_add(plotInfo,"plotPiece","");
        ds_map_add(plotInfo,"plotLevel",0);
        ds_grid_set(global.townGrid,i,j,plotInfo);
    }
}

// Create mapping for room referencing
global.roomMap = ds_map_create();
var currentRoom = room_first;
while(room_exists(currentRoom)){
    if(!ds_map_find_value(global.roomMap,room_get_name(currentRoom))){
        ds_map_add(global.roomMap,room_get_name(currentRoom),currentRoom);
    }
    currentRoom = room_next(currentRoom);
}

#define scr_globalObj_step
var globalObj = argument[0];

if(!instance_exists(obj_player)){
    instance_create(-32,-32,obj_player);
}