var currentNPC = argument[0];
var initialise = argument[1];
var scriptName = "primaryQuest1";

if initialise {
    // write quest info
    ini_write_real("questInfo","initialised",1);
    ini_write_string("questInfo","questName","primaryQuest1");
    ini_write_string("questInfo","questInitiator","NPCPrimary1");
    ini_write_real("questInfo","active",0);
    
    // write stage info
    ini_write_real("completed","stage1",0);
    ini_write_real("completed","stage2",0);
    ini_write_real("completed","stage3",0);
    
    // write reward info
}
