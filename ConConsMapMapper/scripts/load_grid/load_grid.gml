//looping through the grids


//main grid
for (var i = 0; i < ds_grid_width(global.mainGrid); i++) {
	
	for (var j = 0; j< ds_grid_height(global.mainGrid); j++){
		
		
		var m = ds_grid_get(global.mainGrid,i,j)
		var n = ds_grid_get(global.SubimgGrid,i,j)
		
		if (m = ID.filled) {
			draw_sprite(spr_mapTiles,n,i*32,j*32);
		}
	}
}


//marker grid
for (var i = 0; i < ds_grid_width(global.MarkerGrid); i++) {
	
	for (var j = 0; j< ds_grid_height(global.MarkerGrid); j++){
		
		var m = ds_grid_get(global.MarkerGrid,i,j)
		
		if !(m == 0) {
			draw_sprite(spr_marker,m-1,i*32,j*32);
		}
				
			
	}
}


//door grid
for (var i = 0; i < ds_grid_width(global.DoorGrid); i++) {
	
	for (var j = 0; j< ds_grid_height(global.DoorGrid); j++){
		
		
		var m = ds_grid_get(global.DoorGrid,i,j);
		draw_text(i*16,j*16,m);
		
		if (m == 0) {}
		if (m == 1 || m == 6 || m == 11 || m == 16) var subimg = 0;
		if (m == 2 || m == 7 || m == 12 || m == 17) var subimg = 1;
		if (m == 3 || m == 8 || m == 13 || m == 18) var subimg = 2;
		if (m == 4 || m == 9 || m == 14 || m == 19) var subimg = 3;
		if (m == 5 || m == 10 || m == 15 || m == 20) var subimg = 4;
		
		if (m >= 1 && m <= 5) draw_sprite_part(spr_doorTiles,subimg,0,2,4,28,i*32,j*32+2);
	}
}