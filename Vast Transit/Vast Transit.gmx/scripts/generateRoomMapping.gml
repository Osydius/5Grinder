var currentRoom;
currentRoom = room_first;

global.roomMapping = ds_map_create();
while(room_exists(currentRoom))
{
  ds_map_add(global.roomMapping,room_get_name(currentRoom),currentRoom);
  currentRoom=room_next(currentRoom);
}
