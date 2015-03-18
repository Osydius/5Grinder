// Create active quest file and initiate with the first primary quest

if !directory_exists("quests") {
    directory_create("quests");
}
if !file_exists("quests/activeQuests"){
    ini_open("quests/activeQuests.ini");
    ini_write_string("primaryQuest","questName","primaryQuest1");
    ini_write_real("primaryQuest","questStage",1);
    ini_write_real("primaryQuest","questStageCompleted",0);
    ini_close();
}
