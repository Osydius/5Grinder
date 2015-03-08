
ini_open("caver.ini");
if ini_read_real("save","room_last_entered",0) = 0
{
    //show_message("No save file found.");
    ini_close();
    
    global.room_last_entered = 0;
    global.room_furthest_reached = 0;
    
    exit;
} else 
{
    //Insert variables here vvv
    global.room_last_entered = ini_read_real("save","room_last_entered",0);
    global.room_furthest_reached = ini_read_real("save","room_furthest_reached",0);
    //Insert variables here ^^^
    
    ini_close();
}

