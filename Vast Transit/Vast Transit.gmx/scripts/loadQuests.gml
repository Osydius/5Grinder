ini_open("quests/activeQuests.ini");
var primaryQuestName = ini_read_string("primaryQuest","questName","");
// check the file isnt empty
if primaryQuestName != "" {
    primaryQuestStage = ini_read_real("primaryQuest","questStage",0);
    primaryQuestStageCompleted = ini_read_real("primaryQuest","questStageCompleted",0);

    var primaryQuest = ds_map_create();
    ds_map_add(primaryQuest,"questName",primaryQuestName);
    ds_map_add(primaryQuest,"questStage",primaryQuestStage);
    ds_map_add(primaryQuest,"questStageComplete",primaryQuestStageCompleted);
    
    obj_player.primaryQuest = primaryQuest;
    
    var secondaryQuests = ds_list_create();
    var secondaryQuestCount = 0;
    
    while (ini_section_exists("secondaryQuest"+string(secondaryQuestCount))){
            var secondaryQuestName = ini_read_string("secondaryQuest"+string(secondaryQuestCount),"questName",0);
            var secondaryQuestStage = ini_read_real("secondaryQuest"+string(secondaryQuestCount),"questStage",0); 
            var secondaryQuestStageComplete = ini_read_real("secondaryQuest"+string(secondaryQuestCount),"questStageComplete",0);
            
            var secondaryQuestInfo = ds_map_create();
            ds_map_add(secondaryQuestInfo,"questName",secondaryQuestName);
            ds_map_add(secondaryQuestInfo,"questStage",secondaryQuestStage);
            ds_map_add(secondaryQuestInfo,"questStageComplete",secondaryQuestStageComplete);
            
            ds_list_insert(secondaryQuests,secondaryQuestCount,secondaryQuestInfo);
            secondaryQuestCount += 1;
    }
    
    
    obj_player.secondaryQuests = secondaryQuests;
} else {
    ini_close();
}
