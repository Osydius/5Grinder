ini_open("caver.ini")

//Insert variables here vvv
ini_write_real("save","room_last_entered",global.room_last_entered)
ini_write_real("save","room_furthest_reached",global.room_furthest_reached)
//Insert variables here ^^^

ini_close();
