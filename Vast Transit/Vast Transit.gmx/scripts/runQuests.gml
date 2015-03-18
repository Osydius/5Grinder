runQuest(ds_map_find_value(obj_player.primaryQuest,"questName"),false);

var secondaryQuestTotal = ds_list_size(obj_player.secondaryQuests);
for (var i=0;i < secondaryQuestTotal;i++){
    var secondaryQuest = ds_list_find_value(obj-player.secondaryQuests,i);
    runQuest(ds_map_find_value(secondaryQuest,"questName"),true);
}
