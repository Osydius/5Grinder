var NPCinstance = argument[0];
var questScript = argument[1];
var questFile = questScript + '.ini';

if script_exists(questScript){
    ini_open(questFile);
    var questName = ini_read_string("questInfo","initialised",0);
    ini_close();
    if questName == 0{
        // run script with initialisation
        script_execute(questScript,NPCInstance,false);
    } else {
        // run script normally
        script_execute(questScript,NPCInstance,true);
    }
}
