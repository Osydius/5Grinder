var questName = argument[0];
var isOptional = argument[1];

var questStage = 0;
questStageComplete = 0;

if (isOptional) {
    var questInfo = findSecondaryQuestInfo(questName);
    questStage = ds_grid_get(questInfo,1,1);
    questStageComplete = ds_grid_get(questInfo,1,2);
} else {
    if (questName == ds_map_find_value(obj_player.primaryQuest,"questName")){
        questStage = ds_map_find_value(obj_player.primaryQuest,"questStage");
        questStageComplete = ds_map_find_value(obj_player.primaryQuest,"questStageComplete");
    } 
    
}

script_execute(asset_get_index(questName),questStage,questStageComplete);


