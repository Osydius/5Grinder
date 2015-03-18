var questName = argument[0];
var questStage = argument[1];
var questStageComplete = argument[2];

ds_map_replace(obj_player.primaryQuest,"questName",questName);
ds_map_replace(obj_player.primaryQuest,"questStage",questStage);
ds_map_replace(obj_player.primaryQuest,"questStageComplete",questStageComplete);
