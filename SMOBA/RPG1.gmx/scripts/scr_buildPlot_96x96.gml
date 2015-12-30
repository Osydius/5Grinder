#define scr_buildPlot_96x96


#define scr_buildPlot_96x96_create
var plot = argument[0];

var gridWidth = global.gridWidth;
var gridHeight = global.gridHeight;

var townGrid = global.townGrid;
var plotGridX = plot.x/gridWidth;
var plotGridY = plot.y/gridHeight;

var townPlot = ds_grid_get(townGrid,plotGridX,plotGridY);
if(ds_map_find_value(townPlot,"occupied") == false){
    ds_map_replace(townPlot,"occupied",true);
    ds_map_replace(townPlot,"plotSize","96x96");
    ds_map_replace(townPlot,"plotPiece","");
    ds_map_replace(townPlot,"plotLevel",0);
    ds_grid_set(townGrid,plotGridX,plotGridY,townPlot);
} else {
    if(ds_map_find_value(townPlot,"plotSize") == "96x96"){
        plot.plotPiece = ds_map_find_value(townPlot,"plotPiece");
        plot.plotLevel = ds_map_find_value(townPlot,"plotLevel");
    }
} 

#define scr_buildPlot_96x96_step
var plot = argument[0];

#define scr_buildPlot_96x96_draw
var plot = argument[0];