ini_open("quests/activeQuests.ini");

var primaryQuestName = ds_map_find_value(obj_player.primaryQuest,"questName");
var primaryQuestStage = ds_map_find_value(obj_player.primaryQuest,"questStage");
var primaryQuestStageComplete = ds_map_find_value(obj_player.primaryQuest, "questStageComplete");

ini_write_string("primaryQuest","questName",primaryQuestName);
ini_write_real("primaryQuest","questStage",primaryQuestStage);
ini_write_real("primaryQuest","questStageComplete",primaryQuestStageComplete);

var secondaryQuests = obj_player.secondaryQuests;
var secondaryQuestsTotal = ds_list_size(secondaryQuests);

for (var i = 0; i < secondaryQuestsTotal; i++) {
    var secondaryQuest = ds_list_find_value(secondaryQuests,i);
    ini_write_string("secondaryQuest"+string(i),"questName",ds_map_find_value(secondaryQuest,"questName"));
    ini_write_real("secondaryQuest"+string(i),"questStage",ds_map_find_value(secondaryQuest,"questStage"));
    ini_write_real("secondaryQuest"+string(i),"questStageComplete",ds_map_find_value(secondaryQuest,"questStageComplete"));
}

ini_close();

