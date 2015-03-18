var searchForQuest = argument[0];

var secondaryQuests = obj_player.secondaryQuests;
var returnInfo = ds_grid_create(1,2);

if !ds_list_empty(secondaryQuests) {
    for (var i=0; i < ds_list_size(secondaryQuests); i++) {
        var secondaryQuestInfo = ds_list_find_value(secondaryQuests,i);
        var secondaryQuestName = ds_map_find_value(secondaryQuestInfo,"questName");
        if (searchForQuest == secondaryQuestName) {
            ds_grid_set(returnInfo,1,1,ds_map_find_value(secondaryQuestInfo,"questStage"));
            ds_grid_set(returnInfo,1,2,ds_map_find_value(secondaryQuestInfo,"questStageComplete"));
        }
    }
}

return returnInfo;
